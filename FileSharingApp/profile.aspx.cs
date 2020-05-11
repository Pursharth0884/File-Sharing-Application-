using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileSharingApp
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UTYPE"].ToString() == "GUEST")
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                HyperLink1.Text = "Logout";
                HyperLink1.NavigateUrl = "Logout.aspx";
                System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
                con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString2"].ConnectionString;
                con.Open();
                System.Data.SqlClient.SqlCommand com = new System.Data.SqlClient.SqlCommand();
                com.Connection = con;
                com.CommandText = "Select * from Members where email=@p1";
                com.Parameters.AddWithValue("p1",Session["EMAIL"]);
                System.Data.SqlClient.SqlDataReader dr = com.ExecuteReader();
                if (dr.Read())
                {
                    Label1.Text = dr[0].ToString();
                    Label2.Text = dr[2].ToString();
                    Label3.Text = dr[3].ToString();
                    Label4.Text = dr[4].ToString();
                }
                dr.Close();
                com.Parameters.Clear();
                con.Close();
                HyperLink3.Text = "Upload File";
                HyperLink3.NavigateUrl = "FileUpload.aspx";
            }
        }
    }
}