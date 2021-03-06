using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryKita.MasterPages
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] != null)
            {
                LoginBtn.Visible = false;
                RegisterBtn.Visible = false;
                LogoutBtn.Visible = true;
                BookBtn.Visible = true;
            }
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginForm.aspx");
        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterForm.aspx");
        }

        protected void LogoutBtn_Click(object sender, EventArgs e)
        {
            Session["Login"] = null;
            Response.Redirect(Request.RawUrl);
        }

        protected void BookBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookForm.aspx");
        }
    
    }
}