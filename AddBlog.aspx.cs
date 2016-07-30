using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class AddBlog : System.Web.UI.Page
{
protected void Submit(object sender, EventArgs e)
{
    string query = "INSERT INTO [Blogs] VALUES (@Title, @Body)";
    using(SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Shabnam\Documents\WebsiteForNGO's.mdf;Integrated Security=True"))
    {
        using (SqlCommand cmd = new SqlCommand(query, con))
        {
            cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
            cmd.Parameters.AddWithValue("@Body", txtBody.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Default.aspx");
        }
    }
}
}