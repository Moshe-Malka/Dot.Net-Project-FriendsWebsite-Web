using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class NewJob : System.Web.UI.Page
    {
        static string type = "";
        static string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Omer8\Documents\Visual Studio 2015\Projects\Final\Final\App_Data\Database1.mdf;Integrated Security=True";
        SqlConnection cons = new SqlConnection(constring);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            type= Session["email"].ToString();
        }
        //employer register new job
        protected void Button1_Click(object sender, EventArgs e)
        {
            try {

                cons.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Jobs (JobId,CompanyName,JobName,Field_Id,SubField_Id,Discription,EducationalRequirements,ExperienceRequirements,ActiveJob,CompanyEmail)"
                    + "VALUES (@id,@comp,@jobname,@field,@sub,@discr,@edu,@exp,@act,@cemail)", cons);
                cmd.Parameters.AddWithValue("@id", jobid.Text);
                cmd.Parameters.AddWithValue("@comp", type);
                cmd.Parameters.AddWithValue("@jobname", jobname.Text);
                cmd.Parameters.AddWithValue("@field", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@sub", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@discr", discription.Text);
                cmd.Parameters.AddWithValue("@edu", DropDownList4.SelectedValue);
                cmd.Parameters.AddWithValue("@exp",DropDownList5.SelectedValue);
                cmd.Parameters.AddWithValue("@act", 1);
                cmd.Parameters.AddWithValue("@cemail", type);
                cmd.ExecuteNonQuery();

                Label1.Text = "your new job update";
                cons.Close();
                Response.Redirect("EmployersLoggedin.aspx"); }
            catch (Exception  )
            {
                
                Label1.Text = e.ToString();

            }

            
            
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("EmployersLoggedin.aspx");

        }

        protected void backbutton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("EmployersLoggedin.aspx");
        }
    }
}