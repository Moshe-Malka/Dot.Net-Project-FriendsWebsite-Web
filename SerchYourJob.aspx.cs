using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class SerchYourJob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
        }
        //ehwn the user serch by field
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
        //when the user serch by education
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView2.Visible = true;
        }
        //back
        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("LoggedinCendidate.aspx");
        }

        protected void backbutton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("LoggedinCendidate.aspx");
        }
    }
}