﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            lblsuccess.Text = "Login Success,Welcome" + Session["Username"].ToString();
        }
        else
        {
            Response.Redirect("~/SignIn.aspx");
        }
    }
    protected void btnlogout_onClick(object sender , EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
        Session["Username"] = null;
    }
}