using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileSharingApp
{
    public partial class chatting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Application["MSG"] = TextBox1.Text + ":" + TextBox3.Text;
            TextBox3.Text = "";
            TextBox3.Focus();
            if (!Timer1.Enabled)
                Timer1.Enabled = true;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            String s1 = Application["MSG"].ToString();
            String s2 = Session["MYMSG"].ToString();
            if (s1 != s2)
            {
                Session["MYMSG"] = s1;
                TextBox2.Text += "\n" + s1;
            }
        }
    }
}