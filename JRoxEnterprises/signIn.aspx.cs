using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using System.Data.Sql;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace JRoxEnterprises
{
    public partial class signIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTNsignin_Click(object sender, EventArgs e)
        {
            try
            {
                //This is my connection string i have assigned the database file address path  
                string MyConnection2 = "server=50.87.175.35;uid=chaelape_jrox;SslMode = none;persistsecurityinfo = True;pwd=Jr12345*;database=chaelape_jroxSignIn";
                //This is my insert query in which i am taking input from the user through windows forms  
                string Query = "insert into MeetingSign(IboName,Candidate) values('" + this.IboTextBox.Text + "','" + this.CandidateTextBox.Text + "');";
                //This is  MySqlConnection here i have created the object and pass my connection string.  
                MySqlConnection MyConn2 = new MySqlConnection(MyConnection2);
                //This is command class which will handle the query and connection object.  
                MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                MySqlDataReader MyReader2;
                MyConn2.Open();
                MyReader2 = MyCommand2.ExecuteReader();     // Here our query will be executed and data saved into the database.  
                Response.Write("Ibo Saved");
                while (MyReader2.Read())
                {
                }
                MyConn2.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            Response.Redirect("meetingSignIn.aspx");
        }
    }
}