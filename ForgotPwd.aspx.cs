using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class ForgotPwd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Shabnam\Documents\OnlineExamination.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s1 = "select pwd from Registration where que='" + DropDownList1.SelectedItem.Text + "' and ans='" + TextBox2.Text + "' and uid='"+TextBox1.Text+"'" ;
        SqlCommand cmd = new SqlCommand(s1, con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
            Label4.Text = dr[0].ToString();
        else
            Label4.Text = "try again";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        DropDownList1.SelectedItem.Text = DropDownList1.Items[0].Text;
        TextBox2.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}
