using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class LoggedinCendidate : System.Web.UI.Page
    {
        static string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Omer8\Documents\Visual Studio 2015\Projects\Final\Final\App_Data\Database1.mdf;Integrated Security=True";
        SqlConnection cons = new SqlConnection(constring);
        static string type = "";
        static string work = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            type = Session["email"].ToString();
            Label1.Text = "welcome  " + type + " to friends web site";
            Session["email"] = type;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateData.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SerchYourJob.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //chek if user register like recomender
            cons.Open();
            SqlCommand cmd = new SqlCommand("Select  CurrentWorkPlace from Users where  Email=@email", cons);
            cmd.Parameters.AddWithValue("@email", type);
         
            SqlDataReader rd = cmd.ExecuteReader();
            while(rd.Read())
            {
                 work = (rd["CurrentWorkPlace"].ToString());
            }
            if (work=="")
            {
                Label2.Text = "you need to update your data if you want to recommend";
                
            }
            else
            {
                rd.Close();
                Response.Redirect("NewRecomend.aspx");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("YourRecommend.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("WorkExperiance.aspx");
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("LoggedinCendidate.aspx");
        }
    }
}