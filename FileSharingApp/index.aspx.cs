﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileSharingApp
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UTYPE"].ToString() != "GUEST")
            {
                HyperLink1.Text = "Logout";
                HyperLink1.NavigateUrl = "Logout.aspx";
            }
        }
    }
}