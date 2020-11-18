using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;

namespace WebApplication1
{
     public class RoleApplication
    {
        public OleDbConnection myDb;
        public string con = @"Provider = Microsoft.ACE.OLEDB.12.0;Data Source=";



        public RoleApplication()
        {

            myDb = new OleDbConnection(con + "C:/Users/Student/Downloads/WebApplication1/Database1.accdb");
            

        }

        public static string type;
    }
}