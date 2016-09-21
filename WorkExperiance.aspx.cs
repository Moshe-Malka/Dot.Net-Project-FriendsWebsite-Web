using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class WorkExperiance : System.Web.UI.Page
    {
         
        static string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Omer8\Documents\Visual Studio 2015\Projects\Final\Final\App_Data\Database1.mdf;Integrated Security=True";
        SqlConnection cons = new SqlConnection(constring);
        static string type = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            type = Session["email"].ToString();
            
        }
        //fill work experince and save only
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            cons.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Employment(Email,Field_id,SubField_id,CompanyName,Duration,Active) values(@email,@field,@subfield,@Companyname,@duration,@activ)", cons);
            cmd.Parameters.AddWithValue("@email", type);
            cmd.Parameters.AddWithValue("@field", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@subfield", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@companyname", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("@duration", DropDownList4.SelectedValue);
            cmd.Parameters.AddWithValue("@activ", 1);

            cmd.ExecuteNonQuery();
            cons.Close();
            
        }

        //fill work experince and save &close
        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            cons.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Employment(Email,Field_id,SubField_id,CompanyName,Duration,Active) values(@email,@field,@subfield,@Companyname,@duration,@activ)", cons);
            cmd.Parameters.AddWithValue("@email", type);
            cmd.Parameters.AddWithValue("@field", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@subfield", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@companyname", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("@duration", DropDownList4.SelectedValue);
            cmd.Parameters.AddWithValue("@activ", 1);

            cmd.ExecuteNonQuery();
            cons.Close();
            
            
            Response.Redirect("Login.aspx");
        }
    }
}