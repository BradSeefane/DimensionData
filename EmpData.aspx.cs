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
    public partial class WebForm5 : System.Web.UI.Page
    {
        public OleDbConnection myDb;
        public string con = @"Provider = Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|/Database1.accdb";

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            btnLogOT.Enabled = false;
           
            if (RoleApplication.type == "A")
            {
                btnCreate.Enabled = true;
                btnModify.Enabled = true;
                btnDelete.Enabled = true;
                GridView1.Visible = true;
                btnLogOT.Enabled = true; ;

            }
            else if (RoleApplication.type == "M")
            {
                myDb = new OleDbConnection(con);
                myDb.Open();
                btnCreate.Enabled = false;
                btnModify.Enabled = true;
                btnDelete.Enabled = true;
                btnLogOT.Enabled = true;
                GridView1.Visible = false;

               /* OleDbCommand cmd = myDb.CreateCommand();
                cmd.CommandText = "SELECT * from RegisteredUser";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                OleDbDataAdapter da = new OleDbDataAdapter*/



            }

        }

        protected void txtbxHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Create.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void btnModify_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/modify.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if(txtbxEmail.Text.Length == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Login", "alert('" + "Insert a user email address to delete a registered user" + "');", true);
            }
            myDb = new OleDbConnection(con);
            myDb.Open();
            string sql = "DELETE FROM RegisteredUser WHERE Email=?";
            OleDbCommand cmd = new OleDbCommand(sql,myDb);
            //cmd. .Connection = connection1;
            cmd.Parameters.AddWithValue("Email",txtbxEmail.Text);
            cmd.ExecuteNonQuery();
            /*if (reslt > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Login", "alert('" + "Record has been deleted" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Login", "alert('" + "Record could not be found" + "');", true);
            }
            */
            
        }

        protected void btnLogOT_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}