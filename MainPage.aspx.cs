﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class MainPage : System.Web.UI.Page

    {
        string type { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //this.type = "Users";
            //Session["type"] = this.type;

            //Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //this.type = "Employers";
            //Session["type"] = this.type;
            //Response.Redirect("Login.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            this.type = "Employers";
            Session["type"] = this.type;
            Response.Redirect("Login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            this.type = "Users";
            Session["type"] = this.type;

            Response.Redirect("Login.aspx");
        }
    }
}