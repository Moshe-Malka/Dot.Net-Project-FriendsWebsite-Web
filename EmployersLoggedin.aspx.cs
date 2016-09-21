using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class EmployersLoggedin : System.Web.UI.Page
    {
        static string type = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            type = Session["email"].ToString();
            welcome.Text = "welcome"+"  " + type + "  to friends website";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateJob.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewJob.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SerchCendidate.aspx");
            Session["email"] = type;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SerchRecommendtion.aspx");
        }

        protected void welcome_DataBinding(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MainPage.aspx");
        }
    }
}