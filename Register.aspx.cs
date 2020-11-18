using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;


namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public OleDbConnection myDb;
        public string con = @"Provider = Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|/Database1.accdb";


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {


            if (txtbxEmail.Text.Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Registration Incomplete", "alert('" + "Please enter an email address" + "');", true);

            }
            else if (txtbxSurname.Text.Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Registration Incomplete", "alert('" + "Please enter your surname" + "');", true);
            }else if (txtbxPassword.Text.Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Registration Incomplete", "alert('" + "Please enter a password " + "');", true);
            }
            else
            { 

                if (!(txtbxPassword.Text == txtbxConfirmPassword.Text))
                {
                ClientScript.RegisterStartupScript(this.GetType(), "Passwords do not match", "alert('" + "Passwords do not match" + "');", true);
                txtbxPassword.Text = "";
                txtbxConfirmPassword.Text = "";
                 }
                 else
                  {
                    ClientScript.RegisterStartupScript(this.GetType(), "Registration", "alert('" + "Registration completed" + "');", true);


                    myDb = new OleDbConnection(con);

                    myDb.Open();
                    string Sql = "INSERT INTO RegisteredUser(FirstName, LastName, Email, UserPassword) VALUES (@first, @last, @email, @pwd)";
                    //+ txtbxName.Text + "," + txtbxSurname.Text + "," + txtbxEmail.Text + "," + txtbxPassword.Text +") ;
                    OleDbCommand cmd = new OleDbCommand(Sql, myDb);


                    cmd.Parameters.AddWithValue("@first", txtbxName.Text);
                    cmd.Parameters.AddWithValue("@last", txtbxSurname.Text);
                    cmd.Parameters.AddWithValue("@email", txtbxEmail.Text);
                    cmd.Parameters.AddWithValue("@pwd", txtbxPassword.Text);
                    cmd.ExecuteNonQuery();
                    myDb.Close();

                    Response.Redirect("~/Login.aspx");

                }
             }




            


        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
    }