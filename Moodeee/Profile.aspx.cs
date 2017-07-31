using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moodeee
{
    public partial class Profile : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.ImageUrl = "~/ShowImage.ashx?Email=" + GetUserName().Trim() ;

            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
            if (!this.IsPostBack)
            {
                this.PopulateBio();
            }
        }

        public string GetUserName()
        {
            string Username = Page.User.Identity.Name.Trim();
            return Username;
        }


        protected void AddBio(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["MoodeeConnectionString"].ConnectionString;
            string sqlStatment = "Update Users Set Bio = @Bio where Email =@Email";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(sqlStatment, con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@Email", GetUserName());
                    cmd.Parameters.AddWithValue("@Bio", Comment.Text.Trim());
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            Response.Redirect("~/Profile.aspx");
        }

        private void PopulateBio()
        {
            string constr = ConfigurationManager.ConnectionStrings["MoodeeConnectionString"].ConnectionString;
            string sqlStatment = "SELECT Bio FROM Users where Email = @Username";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(sqlStatment, con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@Username", GetUserName());
                    cmd.ExecuteNonQuery();
                    con.Close();
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        this.rptComments.DataSource = ds;
                        this.rptComments.DataBind();
                    }
                }
            }
        }



        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["MoodeeConnectionString"].ConnectionString;
            int length = FileUpload1.PostedFile.ContentLength;
            byte[] pic = new byte[length];
            FileUpload1.PostedFile.InputStream.Read(pic, 0, length);
            string Username = Page.User.Identity.Name.Trim();
            using (SqlConnection con = new SqlConnection(constr))
            {
                try
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        //calling connection method
                        //inserting uploaded image query
                        SqlCommand com = new SqlCommand("Update Users Set Image=@Image, ImageName =@Name where [Email] = @Username", con);
                        com.Parameters.AddWithValue("@Image", pic);
                        com.Parameters.AddWithValue("@Name", Path.GetFileName(FileUpload1.PostedFile.FileName));
                        com.Parameters.AddWithValue("@Username", Username);
                        com.Connection = con;
                        con.Open();
                        com.ExecuteNonQuery();
                    }
                }
                finally
                {
                    con.Close();
                }
            }
        }
    }
}