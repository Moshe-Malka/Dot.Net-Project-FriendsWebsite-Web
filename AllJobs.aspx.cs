using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Final
{
    public partial class AllJobs : System.Web.UI.Page
    {
        static string f = "";
        static string type = "";
        string queryString;

        protected void GridView3_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

            queryString = "Select Email , FirstName , LastName From Users Where " +
               "Field_Id = '" + GridView3.Rows[e.NewSelectedIndex].Cells[4].Text + "' And " +
               "SubField_Id = '" + GridView3.Rows[e.NewSelectedIndex].Cells[5].Text + "' And " +
               "Education = '" + GridView3.Rows[e.NewSelectedIndex].Cells[7].Text + "' ;";



            Session["Job_Id"] = GridView3.Rows[e.NewSelectedIndex].Cells[1].Text;
            Session["CompanyName"] = GridView3.Rows[e.NewSelectedIndex].Cells[2].Text;
            Session["CompanyEmail"] = GridView3.Rows[e.NewSelectedIndex].Cells[10].Text;

            DataSet ds = GetData(queryString);
            if (ds.Tables.Count > 0)
            {
                GridView2.DataSource = ds;
                GridView2.DataBind();

            }


        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                
            }



        }

        DataSet GetData(String queryString)
        {

            // Retrieve the connection string stored in the Web.config file.
            String connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Omer8\Documents\Visual Studio 2015\Projects\Final\Final\App_Data\Database1.mdf;Integrated Security=True";

            DataSet ds = new DataSet();


            // Connect to the database and run the query.
            SqlConnection connection = new SqlConnection(connectionString);
            SqlDataAdapter adapter = new SqlDataAdapter(queryString, connection);

            // Fill the DataSet.
            adapter.Fill(ds);

            return ds;



        }

        protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            TextBox1.Text = GridView2.Rows[e.NewSelectedIndex].Cells[2].Text;
            firstname.Text = GridView2.Rows[e.NewSelectedIndex].Cells[3].Text;
            lastname.Text = GridView2.Rows[e.NewSelectedIndex].Cells[4].Text;
            f= GridView2.Rows[e.NewSelectedIndex].Cells[2].Text;
            Session["CandidateEmail"] = f;

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllDataOfCendidate.aspx");

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("SerchCendidate.aspx");
        }
        

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
}