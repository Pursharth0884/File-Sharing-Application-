using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileSharingApp
{
    public partial class DB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString1"].ConnectionString;
            con.Open();
            System.Data.SqlClient.SqlCommand com = new System.Data.SqlClient.SqlCommand();
            com.Connection = con;
            com.CommandText = "Create Database FileSharing";
            com.ExecuteNonQuery();
            com.CommandText = "Use FileSharing";
            com.ExecuteNonQuery();
            com.CommandText = "Create Table Members(Email varchar(30) Primary Key,UPass varchar(20),Name varchar(30),Mobile varchar(10),Country varchar(20))";
            com.ExecuteNonQuery();
            com.CommandText = "Create Table Files(FileId int Primary key,Email varchar(30),UploadDate DateTime,Description varchar(100),FileName varchar(40))";
            com.ExecuteNonQuery();
            con.Close();
            Button1.Text = "Done";
        }
    }
}