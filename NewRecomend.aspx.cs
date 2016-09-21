using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class NewRecomend : System.Web.UI.Page
    {
        static string type = "";
        static string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Omer8\Documents\Visual Studio 2015\Projects\Final\Final\App_Data\Database1.mdf;Integrated Security=True";
        SqlConnection cons = new SqlConnection(constring);
        protected void Page_Load(object sender, EventArgs e)
        {
            type = Session["email"].ToString();

            Label1.Text = type;

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {//user fill the recomendation 


            bool sucses = false;
            try
            {
                cons.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Recommendations (RecommenderEmail,RecommenderFirstName,CompanyName,UserFirstName,UserEmail,FamiliaritySource,FamiliarityPeriod,Score,WordsOfRecommendations)"
                    + "VALUES (@remail,@rfirst,@company,@ufirst,@uemail,@fs,@fp,@score,@word)", cons);


                cmd.Parameters.AddWithValue("@remail", type);
                cmd.Parameters.AddWithValue("@rfirst", recofirst.Text);
                cmd.Parameters.AddWithValue("@company", DropDownList4.SelectedValue);
                cmd.Parameters.AddWithValue("@ufirst", friendfirstname.Text);
                cmd.Parameters.AddWithValue("@uemail", useremail.Text);
                cmd.Parameters.AddWithValue("@fs", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@fp", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("@score", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@word", TextBox4.Text);


                cmd.ExecuteNonQuery();
                cons.Close();
                Label1.Text = "your reccomend is full";
                Response.Redirect("LoggedinCendidate.aspx");

            }

            catch (SqlException)
            {

                if (!sucses)
                {

                    Label1.Text = "you need to fill the current email of your friend ";

                    cons.Close();


                }
            }
        }
        

        
        //back
        

        protected void backbutton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("LoggedinCendidate.aspx");
        }
    }
}