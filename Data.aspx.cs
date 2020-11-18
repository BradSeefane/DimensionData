using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public OleDbConnection myDb;
        public string con = @"Provider = Microsoft.ACE.OLEDB.12.0;Data Source=";
        protected void Page_Load(object sender, EventArgs e)
        {
            myDb = new OleDbConnection(con + "Database1.accdb");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            myDb = new OleDbConnection(con + "Database1.accdb");
            myDb.Open();
            OleDbDataAdapter adapter = new OleDbDataAdapter(@"SELECT*FROM Employee Where EmployeeNumber = '" + txtbxSearch.Text + "'", myDb);
            //DataSet  ds = new DataSet();
           /* adapter.Fill(GridView1.sour, "List");
            dataGridView1.DataSource = ds;
            dataGridView1.DataMember = "List";
            myDb.Close();*/
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}