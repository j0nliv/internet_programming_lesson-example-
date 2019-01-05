using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace ip_haber_ornegi
{
    public partial class EditNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null || Session["user"].ToString() == "")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                int sil = Convert.ToInt32(Request.QueryString["sil"]);
                OleDbConnection connection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/db/database.accdb"));
                connection.Open();
                if (Request.QueryString["sil"] != null)
                {
                    OleDbCommand cmd = new OleDbCommand("delete from news where news_id = "+sil,connection);
                    int state = cmd.ExecuteNonQuery();
                    if (state > 0)
                    {
                        connection.Close();
                        Response.Redirect("Admin.aspx");
                    }
                }
                else if (Request.QueryString["id"] != null)
                {
                    OleDbCommand cmd = new OleDbCommand("select * from news where news_id="+id,connection);
                    OleDbDataReader read = cmd.ExecuteReader();
                    if (read.Read())
                    {
                        txtHeader.Text = read[1].ToString();
                        txtContent.Text = read[2].ToString();
                        connection.Close();
                    }
                    else
                    {
                        Response.Redirect("admin.aspx");
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int sil = Convert.ToInt32(Request.QueryString["sil"]);
            if (Request.QueryString["id"] != null)
            {
                OleDbConnection connection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/db/database.accdb"));
                connection.Open();
                OleDbCommand cmd = new OleDbCommand("update news set news_header ='"+txtHeader.Text+ "' , news_content = '"+txtContent.Text+"' where news_id="+sil, connection);
                int state = cmd.ExecuteNonQuery();
                if (state > 0)
                {
                    Response.Redirect("Admin.aspx");
                }
            }      
        }
    }
}