using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace ip_haber_ornegi
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/db/database.accdb"));
            connection.Open();
            OleDbCommand cmd = new OleDbCommand("select * from users where user_name = '"+txtUser.Text+"' and user_pass = '"+txtPass.Text+"'",connection);
            OleDbDataReader read = cmd.ExecuteReader();
            if (read.Read())
            {
                string user, pass;
                user = read[1].ToString();
                pass = read[2].ToString();

                if (user == txtUser.Text && pass == txtPass.Text)
                {
                    Session["user"] = user;
                    Response.Redirect("Admin.aspx");
                }
            }
            else
            {
                lblNotify.Text = "Kullanıcı Adı veya Parola Hatalı!";
            }
            connection.Close();
        }
    }
}