using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moodeee
{
    public partial class Comments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
            if (!this.IsPostBack)
            {
                this.PopulateComments();
            }
        }

        protected void AddComment(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["MoodeeConnectionString"].ConnectionString;
            string sqlStatment = "INSERT INTO Comments(Name,Email,CommentBody) values(@Name,@Email,@CommentBody)";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(sqlStatment, con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@Name", this.Name.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", this.Email.Text.Trim());
                    cmd.Parameters.AddWithValue("@CommentBody", Comment.Text.Trim());
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            Response.Redirect("~/Comments.aspx");
        }

        private void PopulateComments()
        {
            string constr = ConfigurationManager.ConnectionStrings["MoodeeConnectionString"].ConnectionString;
            string sqlStatment = "SELECT Name,Email,CommentBody FROM Comments";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(sqlStatment, con))
                {
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
    }
}