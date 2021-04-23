using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LibraryKita.MasterPages
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitLgn_Click(object sender, EventArgs e)
        {
            if (Username.Text == null)
            {
                message.Text = "Username must be filled!";
            }
            else if (Password.MaxLength < 4 || Password.Text == null)
            {
                message.Text = "Password must be filled!";
            }
            else
            {


                string strcon = "Data Source=HUMANOIDSS;Initial Catalog = LibraryKita;Trusted_Connection=true;";
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand com = new SqlCommand("validateLogin", con);
                com.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter("username", Username.Text);
                SqlParameter p2 = new SqlParameter("password", Password.Text);
                com.Parameters.Add(p1);
                com.Parameters.Add(p2);
                con.Open();
                SqlDataReader rd = com.ExecuteReader();
                if (rd.HasRows)
                {
                    rd.Read();
                    message.Text = "Login successful.";
                    message.Visible = true;
                    Session["Login"] = Username.Text;
                    Response.Redirect("LandingPage.aspx");
                    Response.Write("Login Sukses!");
                }
                else
                {
                    message.Text = "Invalid username or password.";
                    message.Visible = true;
                }
            }
        }
    }
}