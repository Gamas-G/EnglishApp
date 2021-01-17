using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EnglishApp
{
    public partial class Form1 : Form
    {
        string pathDestiny = Directory.GetCurrentDirectory() + "\\ImageVerbs\\";
        string pathPrimary, extensionImagen, imagen;
        string pathFinal = string.Empty;
        string type = string.Empty;
        string trimestre = string.Empty;
        public Form1()
        {
            InitializeComponent();
            dt_VerbList.DataSource = null;
            dt_VerbList.DataSource = querys.VerbsAll();
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if(panelOption.Visible == false)
            {
                panelOption.Visible = true;
                panelOption.Size = new Size(744,52);
                linkLabel1.Text = "Options -";
            }
            else
            {
                panelOption.Visible = false;
                linkLabel1.Text = "Options +";
            }

        }

        private void btn_InsertVerb_Click(object sender, EventArgs e)
        {
            
            string infinitive = txt_infin.Text;
            string past       = txt_past.Text;
            string pronun     = txt_pron.Text;
            string participle = txt_parti.Text;
            string gerund     = txt_gerund.Text;
            string spanish    = txt_span.Text;
            
            string sentencePresent  = (txt_EPresent .Text != "") ? txt_EPresent.Text : "Unprecedent";
            string sentencePast     = (txt_EPast.Text != "")     ? txt_EPast.Text    : "Unprecedent";
            string senteceParticipe = (txt_EPartici.Text != "")  ? txt_EPartici.Text : "Unprecedent";


            SetTrim();

            if (infinitive != "" && past != "" && participle != "" && spanish != "" && pronun != "" && sentencePresent != "" && sentencePast != "" && senteceParticipe != "" && gerund != "" && type != "" && trimestre != "" && pathFinal != "")
            {

                try
                {
                    querys.insertVerbs(txt_infin.Text, txt_past.Text, txt_pron.Text, txt_parti.Text, txt_gerund.Text, txt_span.Text, type.ToString(), trimestre, imagen, txt_EPresent.Text, txt_EPast.Text, txt_EPartici.Text);
                    System.IO.File.Copy(pathPrimary, pathFinal, true);
                }
                catch (Exception)
                {
                    MessageBox.Show("Ocurrio un error con la base de datos");
                    return;
                }
                //SetTabla();
            }
            else
            {
                MessageBox.Show("Llene todos los campos porfis");
            }
        }

        private void SetTrim()
        {
            int num_ck = ck_trimes.CheckedItems.Count;
            if (num_ck > 0)
            {
                for (int i = 0; i < num_ck; i++)
                {
                    trimestre += ck_trimes.CheckedItems[i].ToString() + ',';
                }
            }
            else
            {
                trimestre = string.Empty;
            }
        }

        //private void SetTabla()
        //{
        //    int i = dt_VerbList.Rows.Count - 1;

        //    MessageBox.Show("Se inserto en la tabla");

        //}

        private void rd_regul_Click(object sender, EventArgs e)
        {
            type = "1";
        }

        private void rd_irregu_Click(object sender, EventArgs e)
        {
            type = "2";
        }

        private void GetTrim()
        {
            string[] verbs = trimestre.Split(',');
            for (int i = 0; i < verbs.Length-1; i++)
            {
                MessageBox.Show(verbs[i]);
            }
        }

        private void btn_Clear_Click(object sender, EventArgs e)
        {
            //SetTrim();
            //GetTrim();
        }

        private void btn_AddImage_Click(object sender, EventArgs e)
        {
            //MessageBox.Show(pathDestiny);
            if (txt_infin.Text != "")
            {
                OpenFileDialog examinar = new OpenFileDialog();
                examinar.Filter = "image files|*.jpg;*.png;*.gif;*.ico;.*;";
                DialogResult dres1 = examinar.ShowDialog();
                if (dres1 == DialogResult.Abort)
                    return;
                if (dres1 == DialogResult.Cancel)
                    return;
                pathPrimary = examinar.FileName;
                extensionImagen = System.IO.Path.GetExtension(pathPrimary);
                imagen = txt_infin.Text.ToUpper() + extensionImagen;
                pathFinal = System.IO.Path.Combine(pathDestiny, imagen);
                MessageBox.Show(pathFinal);
                using (var stream = File.Open(pathPrimary, FileMode.Open))
                {
                    imageVerb.Image = Image.FromStream(stream);
                    stream.Close();
                }
            }
            else { MessageBox.Show("Ingrese el verbo en infinitivo antes de agregar una imagen"); }
        }
    }
}
