using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Final
{
    public partial class CendidateForJob : System.Web.UI.Page
    {
        static string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Omer8\Documents\Visual Studio 2015\Projects\Final\Final\App_Data\Database1.mdf;Integrated Security=True";
        SqlConnection cons = new SqlConnection(constring);
        static string f = "";
        protected void Page_Load(object sender, EventArgs e, GridViewSelectEventArgs c)
        {
            //Label4.Text = GridView1.Rows[c.NewSelectedIndex].Cells[4].Text;

            if (!Page.IsPostBack)
            {
                f = Label4.Text;
                LoadGridView();
               
                
            }
        }

        private void ChangingSelection(object sender, GridViewSelectEventArgs e)
        {
            f = GridView1.Rows[e.NewSelectedIndex].Cells[4].Text;
        }
        private void LoadGridView()
        {
            cons.Open();
            SqlDataAdapter adap = new SqlDataAdapter("select  Email,FirstName,LastName from Users where Field_Id=101", cons);
            DataSet ds = new DataSet();
            adap.Fill(ds);
            if (ds.Tables.Count > 0)
            {
                GridView2.DataSource = ds;
                GridView2.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cons.Open();
            SqlDataAdapter adap = new SqlDataAdapter("select  Email from Users", cons);
            DataSet ds = new DataSet();
            adap.Fill(ds);
            if (ds.Tables.Count > 0)
            {
                GridView2.DataSource = ds;
                GridView2.DataBind();
            }
        }

        protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            emailtxt.Text = GridView2.Rows[e.NewSelectedIndex].Cells[1].Text;
           firstnametxt.Text = GridView2.Rows[e.NewSelectedIndex].Cells[2].Text;
           lasttxt.Text = GridView2.Rows[e.NewSelectedIndex].Cells[3].Text;
            Session["cendidate"] = emailtxt.Text;
        }
    }
}