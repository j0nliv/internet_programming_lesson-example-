using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace ip_haber_ornegi
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null || Session["user"].ToString() == "")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblAuthor.Text = "Hoşgeldin "+ Session["user"].ToString();
                txtAuthor.Text = Session["user"].ToString();
            }

        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/db/database.accdb"));
            connection.Open();

            if (fileImage.HasFile)
            {
                string image_name = fileImage.FileName;
                fileImage.SaveAs(Server.MapPath("~/images/"+image_name));
                Response.Write("Resim Yüklendi");
            }

            OleDbCommand cmd = new OleDbCommand("insert into news(news_header,news_content,news_author,news_image) values('"+txtHeader.Text+"','"+txtContent.Text+"','"+txtAuthor.Text+"','"+fileImage.FileName+"')",connection);
            if (txtAuthor.Text != "" || txtContent.Text != "" || txtHeader.Text != "")
            {
                cmd.ExecuteNonQuery();
                lblInfo.Text = "Haber başarıyla oluşturuldu.";
            }
            
            connection.Close();
            txtAuthor.Text = "";
            txtContent.Text = "";
            txtHeader.Text = "";
            GridView1.DataBind();
        }
    }
}