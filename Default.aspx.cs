using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.PopulateBlogs();
        }
    }

    private void PopulateBlogs()
    {
        string query = "SELECT [BlogId], [Title], REPLACE([Title], ' ', '-') [SLUG], [Body] FROM [Blogs]";
        
        using ( SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Shabnam\Documents\WebsiteForNGO's.mdf;Integrated Security=True"))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        rptPages.DataSource = dt;
                        rptPages.DataBind();
                    }
                }
            }
        }
    }
}