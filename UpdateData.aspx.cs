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
    public partial class UpdateData : System.Web.UI.Page
    {
        static string first,lastnames,emailAdd, phonestr, passwordstr, currentstr, positionstr = "";
        static string type = "";

        protected void backbutto_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("LoggedinCendidate.aspx");
        }

        static string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Omer8\Documents\Visual Studio 2015\Projects\Final\Final\App_Data\Database1.mdf;Integrated Security=True";
        SqlConnection cons = new SqlConnection(constring);

        protected void Page_Load(object sender, EventArgs e)
        {

            //drop the data of user from dba
            type = Session["email"].ToString();
            DataTable dt = new DataTable();
            cons.Open();
            SqlDataReader myReader = null;
            SqlCommand myCommand = new SqlCommand("select * from Users where Email='" + type + "'", cons);

            myReader = myCommand.ExecuteReader();

            while (myReader.Read())
            {


                firstname.Text = (myReader["FirstName"].ToString());
                lastname.Text = (myReader["LastName"].ToString());
                email.Text = (myReader["Email"].ToString());
                Textpass.Text = (myReader["Password"].ToString());
                Texphone.Text = (myReader["PhoneNumber"].ToString());
                currentjob.Text = (myReader["CurrentWorkPlace"].ToString());
                position.Text = (myReader["CurrentPosition"].ToString());
                TextBoxcity.Text = (myReader["City"].ToString());
                TextBoxfield.Text = (myReader["Field_Id"].ToString());
                TextBoxsubfield.Text = (myReader["SubField_Id"].ToString());
                TextBoxedu.Text = (myReader["Education"].ToString());
                TextBoxcole.Text = (myReader["College"].ToString());
                TextBoxgrad.Text = (myReader["Graduation"].ToString());
                RadioButtonList1.SelectedValue = (myReader["isEmployed"].ToString());





            }
            myReader.Close();
            cons.Close();






        }
        //button to update the data
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {



            try


            {
                //cons.Open();
                SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Omer8\Documents\Visual Studio 2015\Projects\Final\Final\App_Data\Database1.mdf; Integrated Security = True");
                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE Users SET FirstName = @first ,LastName = @last ,Email = @email ,Password = @password ,PhoneNumber = @phone ,CurrentWorkPlace = @current ,CurrentPosition = @position , City = @city , Field_id = @Field , SubField_Id = @sub , Active_User = @act , isEmployed = @em , Education = @edu , College = @college , Graduation = @gr WHERE Email = '" + type + "'", con);



                //chek if the user update the textboxes
                if (TextBoxfirst.Text == "")
                {
                    first = firstname.Text;
                }
                else
                {
                    first = TextBoxfirst.Text;
                }

                if (TextBoxlast.Text == "")
                {
                    lastnames = lastname.Text;
                }
                else
                {
                    lastnames = TextBoxlast.Text;
                }
                if (TextBoxemail.Text == "")
                {
                    emailAdd = email.Text;
                }
                else
                {
                    emailAdd = TextBoxemail.Text;
                }



                if (TextBoxpass.Text == "")
                {
                    passwordstr = Textpass.Text;
                }
                else
                {
                    passwordstr = TextBoxpass.Text;
                }

                if (TextBoxphone.Text == "")
                {
                    phonestr = Texphone.Text;
                }
                else
                {
                    passwordstr = TextBoxphone.Text;
                }
                if (TextBoxCurrentJob.Text == "")
                {
                    currentstr = currentjob.Text;
                }
                else
                {
                    currentstr = TextBoxCurrentJob.Text;
                }

                if (TextBoxPosition.Text == "")
                {
                    positionstr = position.Text;
                }
                else
                {
                    positionstr = TextBoxPosition.Text;
                }



                //after that all the textboxes are full we update in the dba


                cmd.Parameters.AddWithValue("@first", first);
                cmd.Parameters.AddWithValue("@last", lastnames);
                cmd.Parameters.AddWithValue("@email", emailAdd);
                cmd.Parameters.AddWithValue("@password", passwordstr);
                cmd.Parameters.AddWithValue("@phone", phonestr);
                cmd.Parameters.AddWithValue("@current", currentstr);
                cmd.Parameters.AddWithValue("@position", positionstr);


                cmd.Parameters.AddWithValue("@city", DropDownList7.SelectedValue);
                cmd.Parameters.AddWithValue("@Field", DropDownList5.SelectedValue);
                cmd.Parameters.AddWithValue("@sub", DropDownList6.SelectedValue);
                cmd.Parameters.AddWithValue("@act", 1);
                cmd.Parameters.AddWithValue("@em", RadioButtonList1.SelectedValue);
                
                cmd.Parameters.AddWithValue("@edu", DropDownList8.SelectedValue);
                cmd.Parameters.AddWithValue("@college", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("@gr", DropDownList4.SelectedValue);
                
                Session["email"] =email.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("LoggedinCendidate.aspx");

            }
            catch (SqlException sqlExc)
            {
                Label1.Text = sqlExc.Message;
            }


        }



     

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       

    }
}