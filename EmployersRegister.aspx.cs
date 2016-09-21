using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class EmployersRegister : System.Web.UI.Page
    {
        bool sucses;
        string type = "";
        static string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Omer8\Documents\Visual Studio 2015\Projects\Final\Final\App_Data\Database1.mdf;Integrated Security=True";
        SqlConnection cons = new SqlConnection(constring);
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["type"] = "Employers";
            type = Session["type"].ToString();
        }
        //register
        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {

             sucses = false;
            try
            {

                cons.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Employers(CompanyName,City,PhoneNumber,Email,Password,ContactFirstName,ContactLastName,Company_Active) values(@CompanyName,@Address,@PhoneNumber,@ContactEmail,@ContactPassword,@ContactFirstName,@ContactLastName,@Company_Active)", cons);

                cmd.Parameters.AddWithValue("@CompanyName", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@Address", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@PhoneNumber", phone.Text);
              
                cmd.Parameters.AddWithValue("@ContactEmail", contactemail.Text);
                cmd.Parameters.AddWithValue("@ContactPassword", password.Text);
                cmd.Parameters.AddWithValue("@ContactFirstName", contactname.Text);
                cmd.Parameters.AddWithValue("@ContactLastName", contactlastname.Text);
                cmd.Parameters.AddWithValue("@Company_Active", 1);
                //chek();

                cmd.ExecuteNonQuery();
               // sucses = true;
                Session["email"] = contactemail.Text;
                cons.Close();

                if (chek())
                {
                    Response.Redirect("EmployersLoggedin.aspx");
                }
                else
                {
                    cmd.Cancel();
                }
                

            }


            
            catch (SqlException sqlex)
            {

                if (!sucses)
                {

                    Labelerr.Text = sqlex.Message;
                    sucses = false;
                    cons.Close();

                }

            }
        }

        //chek if email exist
        public bool chek()
        {
            cons.Open();
            SqlCommand cmd2 = new SqlCommand("SELECT email FROM " + type + " WHERE Email = @email", cons);
            cmd2.Parameters.AddWithValue("@email", contactemail.Text);
            SqlDataReader read = cmd2.ExecuteReader();
           if (read.HasRows)
            {
                Label1.Text = "the email exist";
                sucses = false;

            }
            else
            {
                sucses = true;
            }
            cons.Close();
            return sucses;
            

        }

    }

}