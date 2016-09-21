using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class UpdateJob : System.Web.UI.Page
    {

        string type = "";
        static string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Omer8\Documents\Visual Studio 2015\Projects\Final\Final\App_Data\Database1.mdf;Integrated Security=True";
        SqlConnection cons = new SqlConnection(constring);
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            type = Session["email"].ToString();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        //update the data of the job
        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                cons.Open();
                SqlCommand cmd = new SqlCommand("UPDATE Jobs SET [CompanyName] = @CompanyName,[JobName] = @JobName,[Field_Id] = @Field_Id,[SubField_Id] = @SubField_Id,[Discription] = @Discription,[EducationalRequirements] = @edu,[ExperienceRequirements] = @ex,[ActiveJob] = @act,[CompanyEmail] = @email where CompanyEmail='" + type + "' and JobId='" + DropDownList6.SelectedValue + "' ", cons);
                //cmd.Parameters.AddWithValue("@jobid", jobid.Text);
                cmd.Parameters.AddWithValue("@CompanyName", companyname.Text);
                cmd.Parameters.AddWithValue("@JobName", jobname.Text);
                cmd.Parameters.AddWithValue("@Field_Id", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@SubField_Id", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@Discription", discription.Text);
                cmd.Parameters.AddWithValue("@edu", DropDownList4.SelectedValue);
                cmd.Parameters.AddWithValue("@ex", DropDownList5.SelectedValue);
                cmd.Parameters.AddWithValue("@act", CheckBoxList1.SelectedValue);
                cmd.Parameters.AddWithValue("@email", type);

                cmd.ExecuteNonQuery();
                cons.Close();
                Session["email"] = type;
                Label3.Text = "your job update";
            }
            //Response.Redirect("EmployersLoggedin.aspx"); }
            catch (SqlException ex)

            {
                Label3.Text = ex.ToString();
            }

        }
        //draw the data   job from dba with email of employer
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            cons.Open();
            SqlDataReader myReader = null;
            SqlCommand myCommand = new SqlCommand("select * from Jobs where CompanyEmail='" + type + "' and JobId='"+ DropDownList6.SelectedValue+"' ", cons);

            myReader = myCommand.ExecuteReader();

            while (myReader.Read())
            {
                companyname.Text = (myReader["CompanyName"].ToString());
                jobid.Text = (myReader["JobId"].ToString());
                jobname.Text = (myReader["JobName"].ToString());
                discription.Text = (myReader["Discription"].ToString());
                
                
                




            }
            cons.Close();
        }

        protected void backbutton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("EmployersLoggedin.aspx");
        }
    }
}