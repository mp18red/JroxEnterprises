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
    public partial class meetingSignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)

            {

                MySql.Data.MySqlClient.MySqlConnection conn;
                string myConnectionString;

                myConnectionString = "server=50.87.175.35;uid=chaelape_jrox;SslMode = none;persistsecurityinfo = True;pwd=Jr12345*;database=chaelape_jroxSignIn";

                try
                {
                    conn = new MySql.Data.MySqlClient.MySqlConnection();
                    conn.ConnectionString = myConnectionString;
                    conn.Open();
                }
                catch (MySql.Data.MySqlClient.MySqlException ex)
                {
                    Response.Write(ex.Message);
                }

                Response.Write("");
                GetResults();
               // BindGridView();
            }//end of if statment




            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
            //CSS for Grid View1


        }///////////////////////////////////////////////////end of load

       
        private void GetResults()
        {
            //Establishing the MySQL Connection
            MySqlConnection conn = new MySqlConnection("Database=chaelape_jroxSignIn;SslMode = none;persistsecurityinfo = True;DataSource=50.87.175.35;UserId=chaelape_jrox;Password=Jr12345*");

            string query;
            MySqlCommand SqlCommand;
            MySqlDataReader reader;

            MySqlDataAdapter adapter = new MySqlDataAdapter();
            //Open the connection to db
            conn.Open();

            //Generating the query to fetch the contact details
            query = "SELECT * FROM MeetingSign";

            SqlCommand = new MySqlCommand(query, conn);
            adapter.SelectCommand = new MySqlCommand(query, conn);
            //execute the query
            reader = SqlCommand.ExecuteReader();
            //Assign the results 
            GridView1.DataSource = reader;

            //Bind the data
            GridView1.DataBind();

        }


        protected void Gridview1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Action")
            {
                string ID = e.CommandArgument.ToString().Split(new char[] { '|' }) [0];
                string IboName = e.CommandArgument.ToString().Split(new char[] { '|' })[1];
                string Candidate = e.CommandArgument.ToString().Split(new char[] { '|' })[2];

                //Get the data value and bind into textbox..
                Response.Redirect("update.aspx?ID=" + ID + "&IboName=" + IboName + "&Candidate=" + Candidate);
            }
        }//end of row command


            protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("signIn.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }//the end
    }


