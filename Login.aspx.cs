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
    public partial class WebForm1 : System.Web.UI.Page
    {

        public OleDbConnection myDb;
        public string con = @"Provider = Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|/Database1.accdb";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (txtbxEmail.Text.Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Email", "alert('" + "Email is required" + "');", true);
            }
            if (txtbxPassword.Text.Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Password", "alert('" + "Password is required" + "');", true);
            }

            myDb = new OleDbConnection(con);
           


            string cmdText = "select Count(*) from RegisteredUser where Email=? and UserPassword=?";
            
            using (OleDbCommand cmd = new OleDbCommand(cmdText, myDb))
            {
               
                myDb.Open();
                cmd.Parameters.AddWithValue("@p1", txtbxEmail.Text);
                cmd.Parameters.AddWithValue("@p2", txtbxPassword.Text);
               
                
                int result = (int)cmd.ExecuteScalar();
                 if(result > 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Login", "alert('" + "Login is successful" + "');", true);
                    

                    OleDbCommand command = new OleDbCommand("select Count(*) from RegisteredUser where Type=?", myDb);
                    command.Parameters.AddWithValue("@p1", "A");
                    

                    int rslt = (int)command.ExecuteScalar();
                    if (rslt > 0)
                    {

                        RoleApplication.type = "A";
                    }
                    else
                    {           
                            RoleApplication.type = "M";
                        
                    }



                    Response.Redirect("~/EmpData.aspx");
                }

                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Login", "alert('" + "Invalid credintials" + "');", true);
                    txtbxEmail.Text = "";
                    txtbxPassword.Text = "";
                }


                    
            }

        }


        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}