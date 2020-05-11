using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileSharingApp
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UTYPE"].ToString() != "GUEST")
            {
                HyperLink1.Text = "Logout";
                HyperLink1.NavigateUrl = "Logout.aspx";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString2"].ConnectionString;
            con.Open();
            System.Data.SqlClient.SqlCommand com = new System.Data.SqlClient.SqlCommand();
            com.Connection = con;
            com.CommandText = "Insert into Members values(@p1,@p2,@p3,@p4,@p5)";
            com.Parameters.AddWithValue("p1", TextBox1.Text);
            com.Parameters.AddWithValue("p2", TextBox2.Text);
            com.Parameters.AddWithValue("p3", TextBox4.Text);
            com.Parameters.AddWithValue("p4", TextBox5.Text);
            com.Parameters.AddWithValue("p5", DropDownList1.SelectedValue);
            com.ExecuteNonQuery();
            com.Parameters.Clear();
            con.Close();
            Response.Redirect("thanks.aspx");
        }
    }
}