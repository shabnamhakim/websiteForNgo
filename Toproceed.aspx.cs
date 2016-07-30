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

public partial class Toproceed : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Shabnam\Documents\WebsiteForNGO's.mdf;Integrated Security=True");
    string s1;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s1 = Session["desg"].ToString();
        if (s1 == "NGO")
        {
                 
          Response.Redirect("ImageGallery.aspx");
        }
        else
            Response.Redirect("SocialWorkerHome.aspx");
    }
}
