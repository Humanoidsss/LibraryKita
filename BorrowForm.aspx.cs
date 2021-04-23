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
    public partial class BorrowForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitOrder_Click(object sender, EventArgs e)
        {
            if (CheckListBuku.SelectedValue == "")
            {
                message.Text = "Book must be Choose!";
            }
            else if (ReturnDate.Text == "")
            {
                message.Text = "Date must be filled!";
            }
            else
            {


                Guid newGUID = new Guid();

                SqlConnection con = new SqlConnection
                ("Data Source=HUMANOIDSS;Initial Catalog = LibraryKita;Trusted_Connection=true;");
                con.Open();

                SqlCommand cmd = new SqlCommand("insert into Order values(@OrderID,@Username,@BukuNama ,@OrderDate, @ReturnDate, Isreturn)", con);
                cmd.Parameters.AddWithValue("OrderID", newGUID.ToString());
                cmd.Parameters.AddWithValue("Username", Session["Login"].ToString());
                cmd.Parameters.AddWithValue("OrderDate", DateTime.Today);
                cmd.Parameters.AddWithValue("ReturnDate", ReturnDate.Text);
                cmd.Parameters.AddWithValue("Isreturn", false);
                cmd.ExecuteNonQuery();

                message.Text = "Buku berhasil ditambah!";
                message.Visible = true;
                CheckListBuku.SelectedValue = "";
                ReturnDate.Text = "";

                Response.Redirect(Request.RawUrl);
            }
        }
    }
}