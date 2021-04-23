using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
namespace LibraryKita
{
    public partial class BookForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void SubmitReg_Click(object sender, EventArgs e)

        {

            if (BookName.Text == "")
            {
                message.Text = "Nama must be filled!";
            }
            else if (BookDate.Text == "")
            {
                message.Text = "Date must be filled!";
            }
            else
            {


                Guid newGUID = new Guid();

                SqlConnection con = new SqlConnection
                ("Data Source=HUMANOIDSS;Initial Catalog = LibraryKita;Trusted_Connection=true;");
                con.Open();

                SqlCommand cmd = new SqlCommand("insert into Buku values(@BookID,@BookName,@BookDate)", con);
                cmd.Parameters.AddWithValue("BookID", newGUID.ToString());
                cmd.Parameters.AddWithValue("BookName", BookName.Text);
                cmd.Parameters.AddWithValue("BookDate", BookDate.Text);
                cmd.ExecuteNonQuery();

                message.Text = "Buku berhasil ditambah!";
                message.Visible = true;
                BookName.Text = "";
                BookDate.Text = "";

                Response.Redirect(Request.RawUrl);
            }
        }
    }
}