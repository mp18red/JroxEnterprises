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
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {
                IboTextBox.Text = Request.QueryString["IboName"];
                CandidateTextBox.Text = Request.QueryString["Candidate"];

                //Filling the text box with Selected Info From Meeting Signin Page
            }//end of post back


        }//end of page load

        protected void BTNedit_Click(object sender, EventArgs e)
        {


            try
            {
                //This is my connection string i have assigned the database file address path  
                string MyConnection2 = "Database=chaelape_jroxSignIn;SslMode = none;persistsecurityinfo = True;DataSource=50.87.175.35;UserId=chaelape_jrox;Password=Jr12345*";
                //This is my update query in which i am taking input from the user through windows forms and update the record.  
                string Query = "update MeetingSign set IboName='" + this.IboTextBox.Text + "',Candidate='" + this.CandidateTextBox.Text + "' where ID='" + Request.QueryString["ID"] + "';";
                //This is  MySqlConnection here i have created the object and pass my connection string.  
                MySqlConnection MyConn2 = new MySqlConnection(MyConnection2);
                MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                MySqlDataReader MyReader2;
                MyConn2.Open();
                MyReader2 = MyCommand2.ExecuteReader();
                Response.Write("Ibo Updated");
                while (MyReader2.Read())
                {
                }
                MyConn2.Close();//Connection closed here  
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            Response.Redirect("meetingSignIn.aspx");


        }//end of BTNEdit

        protected void BTNdelete_Click(object sender, EventArgs e)
        {

                try
                {
                    string MyConnection2 = "Database=chaelape_jroxSignIn;SslMode = none;persistsecurityinfo = True;DataSource=50.87.175.35;UserId=chaelape_jrox;Password=Jr12345*";
                    string Query = "delete from MeetingSign where ID='" + Request.QueryString["ID"] + "';";
                    MySqlConnection MyConn2 = new MySqlConnection(MyConnection2);
                    MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                    MySqlDataReader MyReader2;
                    MyConn2.Open();
                    MyReader2 = MyCommand2.ExecuteReader();
                    Response.Write("Ibo Deleted");
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


        }//end of BTN Delete




    }//END
}//END