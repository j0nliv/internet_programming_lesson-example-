using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace ip_haber_ornegi
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/db/database.accdb"));
            connection.Open();

            OleDbCommand cmd = new OleDbCommand("insert into users(user_name,user_pass) values('"+txtAuthor.Text+"','"+txtPass.Text+"')",connection);
            if (txtAuthor.Text != "" || txtPass.Text != "" || txtPass2.Text != "")
            {
                if (txtPass.Text == txtPass2.Text)
                {
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}