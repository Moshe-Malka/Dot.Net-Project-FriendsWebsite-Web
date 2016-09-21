using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class Login : System.Web.UI.Page
    {
        string type = "";

        static string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Omer8\Documents\Visual Studio 2015\Projects\Final\Final\App_Data\Database1.mdf;Integrated Security=True";
        SqlConnection cons = new SqlConnection(constring);
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            type = Session["type"].ToString();
        }

        //butoon to login,select from dba
        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            cons.Open();
            //SqlCommand cmd = new SqlCommand("SELECT * FROM " + type + " WHERE Email = @email And Password = @pass)", cons);
            string q = "SELECT * FROM " + type + " WHERE Email = @email And Password = @pass";
            cmd = new SqlCommand(q, cons);

            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@pass", passtxtbox.Text);

            SqlDataReader reader = cmd.ExecuteReader();
            errlb.Text = reader.HasRows.ToString();

            if (reader.HasRows)

            {
                
                if (type == "Users")
                {

                    Session["email"] = email.Text;
                    Session["type"] = type;
                    Response.Redirect("LoggedinCendidate.aspx");

                    reader.Close();
                    cons.Close();
                }
                else  // type == "Employer"
                {
                   
                    Session["email"] = email.Text;
                    Session["type"] = type;
                    //Session["companyname"] = reader["CompanyName"].ToString();
                    Response.Redirect("EmployersLoggedin.aspx");

                    reader.Close();
                    cons.Close();
                }


            }
            else
            {
                errlb.Text = "user or pass not correct";
                type = Session["type"].ToString();
                reader.Close();
                cons.Close();
            }
        }
        //buttomn to login to corect page
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (type == "Users")
            {
                Response.Redirect("CendidateRegister.aspx");
            }
            else
            {
                Response.Redirect("EmployersRegister.aspx");
            }
        }
        //new user
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (type == "Users")
            {
                Response.Redirect("CendidateRegister.aspx");
            }
            else
            {
                Response.Redirect("EmployersRegister.aspx");
            }
        }

        protected void PasswordRecovery1_SendingMail(object sender, MailMessageEventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (! EmailRecovery.Text.ToString().Equals(""))
            {
                sendit(EmailRecovery.Text);
                PasswordChangedLabel.Text = "Your Password Is Waiting For You In Your Mail Box";
            }
            else
            {
                PasswordChangedLabel.Text = "No Email Is Entered !!!";

            }
        }



        public string sendit(string ReciverMail)
        {
            MailMessage msg = new MailMessage();
            string companyName = getPassword(type);
            msg.From = new MailAddress("omer3026@gmail.com");
            msg.To.Add(ReciverMail);
            msg.Subject = "Your Recovered Password in Friend Website !";
            msg.Body = getPassword(EmailRecovery.Text);
            SmtpClient client = new SmtpClient();
            client.UseDefaultCredentials = true;
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.EnableSsl = true;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.Credentials = new System.Net.NetworkCredential("omer3026@gmail.com", "963852ome");
            client.Timeout = 20000;
            try
            {
                client.Send(msg);
                return "Mail has been successfully sent!";
            }
            catch (Exception ex)
            {
                return "Fail Has error" + ex.Message;
            }
            finally
            {
                msg.Dispose();
            }
        }


        protected string getPassword(string email)
        {
            string tmpPassword = "";
            cons.Open();
            string q = "SELECT Password FROM "+type+" where Email='" + EmailRecovery.Text + "';";
            cmd = new SqlCommand(q, cons);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                tmpPassword = (reader["Password"].ToString());
            }
            reader.Close();
            cons.Close();

            return tmpPassword;

        }
    }
}