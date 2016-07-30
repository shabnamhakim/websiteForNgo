using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
public partial class DisplayBlog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.PopulateBlog();
        }
    }

    private void PopulateBlog()
    {
        string blogId = this.Page.RouteData.Values["BlogId"].ToString();
        string query = "SELECT [Title], [Body] FROM [Blogs] WHERE [BlogId] = @BlogId";
        using ( SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Shabnam\Documents\WebsiteForNGO's.mdf;Integrated Security=True"))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Parameters.AddWithValue("@BlogId", blogId);
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        lblTitle.Text = dt.Rows[0]["Title"].ToString();
                        lblBody.Text = dt.Rows[0]["Body"].ToString();
                    }
                }
            }
        }
    }
}
