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
    public partial class SerchRecommendtion : System.Web.UI.Page
    {
        string type;

        static string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Omer8\Documents\Visual Studio 2015\Projects\Final\Final\App_Data\Database1.mdf;Integrated Security=True";
        SqlConnection cons = new SqlConnection(constring);
        SqlCommand cmd = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            type = Session["email"].ToString();
        }


        protected void ChangingSelection(object sender, GridViewSelectEventArgs e)
        {
            EmailReco.Text = GridView3.Rows[e.NewSelectedIndex].Cells[1].Text;
            NameReco.Text = GridView3.Rows[e.NewSelectedIndex].Cells[2].Text;
            NameCand.Text = GridView3.Rows[e.NewSelectedIndex].Cells[4].Text;
            EmailCand.Text = GridView3.Rows[e.NewSelectedIndex].Cells[5].Text;
            Reletionship.Text = GridView3.Rows[e.NewSelectedIndex].Cells[6].Text;
            PeriodOfAqc.Text = GridView3.Rows[e.NewSelectedIndex].Cells[7].Text;
            Score.Text = GridView3.Rows[e.NewSelectedIndex].Cells[8].Text;
            Words.Text = GridView3.Rows[e.NewSelectedIndex].Cells[9].Text;
            
            sendit(EmailReco.Text);

        }

        protected void backbutton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("EmployersLoggedin.aspx");
        }

        public string sendit(string ReciverMail)
        {
            MailMessage msg = new MailMessage();
            string companyName = getCompanyName(type);
            msg.From = new MailAddress("omer3026@gmail.com");
            msg.To.Add(ReciverMail);
            msg.Subject = "An Employer has Viewd your Recommendtion !";
            msg.Body = string.Format(
                "Employer {0} has viewd your recommendtion. {3}" +
                "for candidate {1} with email {2}.{3}" +
                "Have A Nice Day :) {3}From Friend Website.",
                companyName, NameCand.Text, EmailCand.Text, Environment.NewLine); ;
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


        protected string getCompanyName(string email)
        {
            string tmpName = "";
            cons.Open();
            string q = "SELECT CompanyName FROM Employers where Email='" + type + "'";
            cmd = new SqlCommand(q, cons);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                tmpName = (reader["CompanyName"].ToString());
            }
            reader.Close();
            cons.Close();
            
            return tmpName;

        }

    }
    }