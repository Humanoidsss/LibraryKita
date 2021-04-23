using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LibraryKita
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitReg_Click(object sender, EventArgs e)

        {
            Guid newGUID = new Guid();     

                SqlConnection con = new SqlConnection
                ("Data Source=.;Initial Catalog = LibraryKita;Trusted_Connection=true;");
                con.Open();

                SqlCommand cmd = new SqlCommand("insert into Registration values(@ID,@name,@email, @password)", con);
                cmd.Parameters.AddWithValue("ID", newGUID.ToString());
                cmd.Parameters.AddWithValue("name", Username.Text);
                cmd.Parameters.AddWithValue("password", Password.Text);
                cmd.Parameters.AddWithValue("email", Email.Text);
                cmd.ExecuteNonQuery();

                message.Text = "Register Sukses";
                message.Visible = true;
                Username.Text = "";
                Password.Text = "";
                Email.Text = "";


            Response.Redirect("LoginForm.aspx");
            Response.Write("Register Sukses!");
        }
    }
}