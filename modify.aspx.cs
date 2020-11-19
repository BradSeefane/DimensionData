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
    public partial class WebForm8 : System.Web.UI.Page
    {
        public OleDbConnection myDb;
        public string con = @"Provider = Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|/Database1.accdb";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnModify_Click(object sender, EventArgs e)
        {
            myDb = new OleDbConnection(con);


            string cmdText = "select Count(*) from RegisteredUser where Email=?";

            using (OleDbCommand cmd = new OleDbCommand(cmdText, myDb))
            {

                myDb.Open();
                OleDbCommand command = new OleDbCommand("Update RegisteredUser set FirstName='" + txtbxName.Text + "' where Email='" + txtbxEmpID.Text + "'", myDb);
                command.ExecuteNonQuery();
                OleDbCommand command1 = new OleDbCommand("Update RegisteredUser set LastName='" + txtbxSurname.Text + "' where Email='" + txtbxEmpID.Text + "'", myDb);
                command1.ExecuteNonQuery();
                OleDbCommand command2 = new OleDbCommand("Update RegisteredUser set Email='" + txtbxEmail.Text + "' where Email='" + txtbxEmpID.Text + "'", myDb);
                command2.ExecuteNonQuery();
                OleDbCommand command3 = new OleDbCommand("Update RegisteredUser set Type='" + ListBox1.SelectedValue + "' where Email='" + txtbxEmpID.Text + "'", myDb);
                command3.ExecuteNonQuery();
                myDb.Close();
        
            }
        }

        protected void txtbxHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}