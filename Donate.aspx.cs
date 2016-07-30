using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Donate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Shabnam\Documents\WebsiteForNGO's.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string pName = GridView1.SelectedRow.Cells[1].Text;
        Label1.Text = "<b>You chose  &nbsp;:&nbsp;&nbsp;   " + pName + "</b>";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("DonateRedirect.html");
    }
}