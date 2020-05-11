using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileSharingApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "admin@admin.com" && TextBox2.Text == "admin123")
            {
                Session["UTYPE"] = "ADMIN";
                Response.Redirect("admin.aspx");
            }
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString2"].ConnectionString;
            con.Open();
            System.Data.SqlClient.SqlCommand com = new System.Data.SqlClient.SqlCommand();
            com.Connection = con;
            com.CommandText = "Select * from Members where Email=@p1 and UPass=@p2";
            com.Parameters.AddWithValue("p1", TextBox1.Text);
            com.Parameters.AddWithValue("p2", TextBox2.Text);
            System.Data.SqlClient.SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                Session["UTYPE"] = "MEMBER";
                Session.Add("UNAME", dr["name"]);
                Session.Add("EMAIL", dr["Email"]);
                Label1.Visible = false;
                Response.Redirect("profile.aspx");
            }
            else
            {
                Label1.Visible = true;
            }
            dr.Close();
            con.Close();
            
        }
    }
}