using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LibraryKita
{
    public partial class ReturnForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitOrder_Click(object sender, EventArgs e)
        {
            if (CheckListOrder.SelectedValue == null)
            {
                message.Text = "Username must be filled!";
                message.Visible = true;
            }
            else
            {
                SqlConnection con = new SqlConnection
               ("Data Source=HUMANOIDSS;Initial Catalog = LibraryKita;Trusted_Connection=true;");
                con.Open();

                SqlCommand cmd = new SqlCommand("insert into Orders values(@OrderID,@Username,@BukuNama ,@OrderDate, @ReturnDate, @Isreturn)", con);
                cmd.ExecuteNonQuery();

            }
        }
    }
}