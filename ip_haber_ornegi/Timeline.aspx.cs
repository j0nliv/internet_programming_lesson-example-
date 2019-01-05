using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace ip_haber_ornegi
{
    public partial class Timeline : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/db/database.accdb"));
            connection.Open();

            OleDbCommand cmd = new OleDbCommand("select * from news",connection);
            OleDbDataReader reader = cmd.ExecuteReader();
            Repeater1.DataSource = reader;
            Repeater1.DataBind();
            reader.Close();

            connection.Close();
        }
    }
}