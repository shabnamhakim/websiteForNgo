using System;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string strCon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Shabnam\Documents\WebsiteForNGO's.mdf;Integrated Security=True;Connect Timeout=30";
    protected void Page_Load(object sender, EventArgs e)
    {
            BindGridviewData();
        
    }
     //Bind Gridview Data
    private void BindGridviewData()
    {
        using (SqlConnection con=new SqlConnection(strCon))
        {
            using (SqlCommand cmd=new SqlCommand())
            {
                cmd.CommandText = "select * from FileInformation";
                cmd.Connection = con;
                con.Open();
                gvDetails.DataSource = cmd.ExecuteReader();
                gvDetails.DataBind();
                con.Close();
            }
        }
     }
    //// Save files to Folder and files path in database
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        string filename = Path.GetFileName(fileUpload1.PostedFile.FileName);
        Stream str = fileUpload1.PostedFile.InputStream;
        BinaryReader br = new BinaryReader(str);
        Byte[] size = br.ReadBytes((int) str.Length);
        string desc = TextBox1.Text;
        using (SqlConnection con=new SqlConnection(strCon))
        {
            using (SqlCommand cmd=new SqlCommand())
            {
                cmd.CommandText = "insert into FileInformation(Name,Descr,Type,Data) values(@Name,@Descr,@Type,@Data)";
                cmd.Parameters.AddWithValue("@Name", filename);
                cmd.Parameters.AddWithValue("@Descr", desc);
                cmd.Parameters.AddWithValue("@Type", "word/text");
                cmd.Parameters.AddWithValue("@Data", size);
                cmd.Connection =con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                   
            }
        }
    }
    // This button click event is used to download files from gridview
    protected void lnkDownload_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtn = sender as LinkButton;
        GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        int fileid = Convert.ToInt32(gvDetails.DataKeys[gvrow.RowIndex].Value.ToString());
        string name, type;
        using (SqlConnection con=new SqlConnection(strCon))
        {
            using (SqlCommand cmd=new SqlCommand())
            {
                cmd.CommandText = "select Name,Descr,Data from FileInformation where Id=@Id";
                cmd.Parameters.AddWithValue("@id", fileid);
                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    Response.ContentType = dr["Type"].ToString();
                    Response.AddHeader("Content-Disposition", "attachment;filename=\"" +dr["Name"] + "\"");
                    Response.BinaryWrite((byte[])dr["Data"]);
                    Response.End();
                }
            }
        }
    }
//        protected void DownloadFile(object sender, EventArgs e)
//    {
//        string filePath = (sender as LinkButton).CommandArgument;
//        Response.ContentType = ContentType;
//        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
//        Response.WriteFile(filePath);
//        Response.End();
//    }
//    protected void LinkButton1_Click(object sender, EventArgs e)
//{
//        string filePath = (sender as LinkButton).CommandArgument;
//        Response.ContentType = ContentType;
//        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
//        Response.WriteFile(filePath);
//        Response.End();

//}
}
