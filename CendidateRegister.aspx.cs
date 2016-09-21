using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class CendidateRegister : System.Web.UI.Page
    {
        bool sucses;

        static string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Omer8\Documents\Visual Studio 2015\Projects\Final\Final\App_Data\Database1.mdf;Integrated Security=True";
        SqlConnection cons = new SqlConnection(constring);

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["type"] = "Users";
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {

             sucses = false;
            try
            {
                cons.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Users (FirstName,LastName,Email,Password,PhoneNumber,City,Field_Id,SubField_Id,Active_User,isEmployed,CurrentWorkPlace,CurrentPosition,Education,College,Graduation)"
                    + "VALUES (@fname,@lname,@em,@pass,@phon,@add,@field,@sub,@active,@emp,@work,@pos,@edu,@college,@gradu)", cons);
                cmd.Parameters.AddWithValue("@fname", firstname.Text);
                cmd.Parameters.AddWithValue("@lname", lastname.Text);
                cmd.Parameters.AddWithValue("@em", email.Text);
                cmd.Parameters.AddWithValue("@pass", password.Text);
                cmd.Parameters.AddWithValue("@phon", phone.Text);
                cmd.Parameters.AddWithValue("@add", DropDownList7.SelectedValue);
                cmd.Parameters.AddWithValue("@field", DropDownList5.SelectedValue);
                cmd.Parameters.AddWithValue("@sub", DropDownList6.SelectedValue);
                cmd.Parameters.AddWithValue("@active", 1);
                cmd.Parameters.AddWithValue("@emp", RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("@work", currentjob.Text);
                cmd.Parameters.AddWithValue("@pos", position.Text);
                cmd.Parameters.AddWithValue("@edu", DropDownList8.SelectedValue);
                cmd.Parameters.AddWithValue("@college", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("@gradu", DropDownList4.SelectedValue);

                cmd.ExecuteNonQuery();
                cons.Close();
                
                //to fill experinance
                    if (CheckBox1.Checked)
                    {
                        Session["email"] = email.Text;
                        Response.Redirect("WorkExperiance.aspx");
                    }
                    else
                    {
                        Response.Redirect("Login.aspx");
                    }
                   // Response.Redirect("Login.aspx");
                
               
            }

            catch (SqlException c)
            {

                if (!chek())
                {
                    Label1.Text = "the email exist";
                    cons.Close();
                }

               else    if (!sucses)
                {

                    Label1.Text =c.Message ;
                    sucses = false;
                   cons.Close();

                }
            }
        }
        //chekif email exist
        public bool chek()
        {
            cons.Close();
            cons.Open();
            SqlCommand cmd2 = new SqlCommand("SELECT email FROM Users WHERE Email = @email", cons);
            cmd2.Parameters.AddWithValue("@email",email.Text);
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
                return sucses;
            }
    }
}