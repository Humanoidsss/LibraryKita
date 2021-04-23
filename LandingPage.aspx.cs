using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryKita.MasterPages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Login"]!= null)
            {
                LoginButton.Visible = false;
                RegisterButton.Visible = false;
                ReturnButton.Visible = true;
                BorrowButton.Visible = true;

                LandingText.Text = "Welcome to Library Kita!, " + Session["Login"].ToString();
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginForm.aspx");
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterForm.aspx");
        }

        protected void BorrowButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("BorrowForm.aspx");
        }

        protected void ReturnButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReturnForm.aspx");
        }
    }
}