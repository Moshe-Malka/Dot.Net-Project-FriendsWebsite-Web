using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class AllDataOfCendidate : System.Web.UI.Page
    {
        static string id = "";
        static string compnayname = "";
        static string compnayemail = "";
        static string cendidatemail = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            id = Session["Job_Id"].ToString();
            compnayname = Session["CompanyName"].ToString();
            compnayemail = Session["CompanyEmail"].ToString();
            cendidatemail = Session["CandidateEmail"].ToString();

        }

        protected void backbutton_Click(object sender, ImageClickEventArgs e)
        {
            Session["email"] = Session["email"].ToString();
            Response.Redirect("EmployersLoggedin.aspx");
        }

        protected void hasama_Click(object sender, EventArgs e)
        {

            String conn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Omer8\Documents\Visual Studio 2015\Projects\Final\Final\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection cons = new SqlConnection(conn);
            cons.Open();
           
                SqlCommand cmd = new SqlCommand("INSERT INTO Hasama (JobID,CompanyName,CompanyEmail,CandidateEmail) VALUES (@idjob,@cname,@comemail,@cendiemail)", cons);
                cmd.Parameters.AddWithValue("@idjob",id);
                cmd.Parameters.AddWithValue("@cname", compnayname);
                cmd.Parameters.AddWithValue("@comemail", compnayemail);
                cmd.Parameters.AddWithValue("@cendiemail", cendidatemail);


            cmd.ExecuteNonQuery();
            cons.Close();
            msesgelabel.Text = "Assignmet Completed!";
        }

            
        }
    }
