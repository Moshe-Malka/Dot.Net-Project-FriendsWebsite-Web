using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class YourRecommend : System.Web.UI.Page
    {
        static string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Omer8\Documents\Visual Studio 2015\Projects\Final\Final\App_Data\Database1.mdf;Integrated Security=True";
        SqlConnection cons = new SqlConnection(constring);
        static string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Session["email"] = Session["email"].ToString();
            Response.Redirect("LoggedinCendidate.aspx");
        }

        protected void deleterow_Click(object sender, EventArgs e)
        {
            cons.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Recommendations where Id='" + id + "'", cons);
            cmd.ExecuteNonQuery();
            GridView2.DataBind();
            mesege.Text = "your recomemend was delete";
            cons.Close();
        }

        protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            id= GridView2.Rows[e.NewSelectedIndex].Cells[1].Text;
        }
    }
}