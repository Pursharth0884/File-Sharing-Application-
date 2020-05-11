using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileSharingApp
{
    public partial class FileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UTYPE"].ToString() != "GUEST")
            {
                HyperLink1.Text = "Logout";
                HyperLink1.NavigateUrl = "Logout.aspx";
            }
            else
            {
                HyperLink3.Text = "Upload File";
                HyperLink3.NavigateUrl = "FileUpload.aspx";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String path = Server.MapPath("upload");
            String filename = FileUpload1.FileName;

            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString2"].ConnectionString;
            con.Open();
            System.Data.SqlClient.SqlCommand com = new System.Data.SqlClient.SqlCommand();
            com.Connection = con;
            com.CommandText = "Select count(*)+1 from Files";
            Object fid = com.ExecuteScalar();
            FileUpload1.SaveAs(path + "\\" + fid + "_" + filename);
            com.CommandText = "Insert into Files values(@p1,@p2,@p3,@p4,@p5)";
            com.Parameters.AddWithValue("p1", fid);
            com.Parameters.AddWithValue("p2", Session["EMAIL"]);
            com.Parameters.AddWithValue("p3", DateTime.Now.ToString("dd-MMM-yyyy"));
            com.Parameters.AddWithValue("p4", TextBox1.Text);
            com.Parameters.AddWithValue("p5", filename);
            com.ExecuteNonQuery();
            com.Parameters.Clear();
            con.Close();
            Label1.Text = "Done";
        }
    }
}