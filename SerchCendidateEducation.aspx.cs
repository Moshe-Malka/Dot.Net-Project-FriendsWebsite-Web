﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class SerchCendidateEducation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        //back
        protected void backbuton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("SerchCendidate.aspx");

        }
    }
}