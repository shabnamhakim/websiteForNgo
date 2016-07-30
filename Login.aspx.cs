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

public partial class Home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Shabnam\Documents\WebsiteForNGO's.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
        //if (DropDownList1.SelectedItem.Text == "Student")
        //   Session["uid"] = TextBox1.Text;
            


        String de=DropDownList1.SelectedItem.Text;
        Session["desg"] = DropDownList1.SelectedItem.Text;
        if (de == "Social Worker")
        {
            string s1 = "select * from Reg where utype='" + DropDownList1.SelectedItem.Text + "' and uid='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'";

            SqlCommand cmd = new SqlCommand(s1, con);
            SqlDataReader da;
            da = cmd.ExecuteReader();
            if (da.Read())
                Response.Redirect("Toproceed.aspx");
            else
                Response.Write("not authenticated");
        }
        else 
        {
            string s1 = "select * from ngo where utype='" + DropDownList1.SelectedItem.Text + "' and uid='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'";

            SqlCommand cmd = new SqlCommand(s1, con);
            SqlDataReader da;
            da = cmd.ExecuteReader();
            if (da.Read())
                Response.Redirect("Toproceed.aspx");
            else
                Response.Write("not authenticated");
        }
        //if (da.Read())
        //    Response.Redirect("Toproceed.aspx");
        //else
        //    Response.Write("not authenticated");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgotPwd.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePwd.aspx");
    }
    
}
