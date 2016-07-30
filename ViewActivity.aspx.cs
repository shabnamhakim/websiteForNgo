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

public partial class StudentHome : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Shabnam\Documents\OnlineExamination.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        //con.Open();
        //SqlCommand cmd = new SqlCommand("select i from Registration where uid='" + Session["uid"].ToString() + "'", con);
        //SqlDataReader dr;
        //dr = cmd.ExecuteReader();

        //if (dr.Read())
        //{
        //    Session["sids"] = dr[0].ToString();


        //    dr.Close();
        //}
        //dr.Close();


    }
}
