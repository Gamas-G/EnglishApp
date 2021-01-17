using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;
//using System.Windows.Forms;


namespace EnglishApp
{
    class querys
    {
        //METODO PARA BUSCAR TODOS LOS VERBOS POR TRIMESTRES
        public static DataTable Verbs(int idTri)
        {
            //MySqlConnection conexion = new MySqlConnection();
            var conexion = ConexionBD.conexionBD();
            string query = string.Format("SELECT verbs.ID,verbs.infinitive, verbs.past, verbs.pronunciation,verbs.pastParticiple,verbs.gerund,verbs.spanish,verbs.type,verbs.imagen FROM `verbs` INNER JOIN relation ON relation.IdVerb = verbs.ID AND relation.IdTri = '{0}'", idTri);
            MySqlDataAdapter da = new MySqlDataAdapter(query, conexion);
            conexion.Close();
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public static DataTable VerbsAll()
        {
            //MySqlConnection conexion = new MySqlConnection();
            var conexion = ConexionBD.conexionBD();
            string query = string.Format("SELECT * FROM fuente;");
            MySqlDataAdapter da = new MySqlDataAdapter(query, conexion);
            conexion.Close();
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }


        //METODO PARA INSERTAR NUEVOS VERBOS
        public static void insertVerbs(string infinitive, string past, string pronunciation, string participle, string gerund, string spanish, string type, string trim, string image, string examSimplePre, string examSimplePast, string examSimplePartici)
        {
            string query = string.Format("INSERT INTO fuente(infinitive,past,pronunciation,pastParticiple,gerund,spanish,type,trimestres,imagen,exampleSimplePresent,exampleSimplePast,examplePastParticiple) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}');", infinitive, past, pronunciation, participle, gerund, spanish, type, trim, image, examSimplePre, examSimplePast, examSimplePartici);

            var conexion = ConexionBD.conexionBD();
            MySqlCommand comand = new MySqlCommand(query, conexion);
            //try
            //{
                comand.ExecuteNonQuery();

            //}
            //catch (Exception e)
            //{
            //    MessageBox.Show(e.ToString());
            //}
            //MessageBox.Show("Lo cerramos");
            conexion.Close();

        }
    }
}
