using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moodeee
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
        }
        protected void OnChangingPassword(object sender, LoginCancelEventArgs e)
        {
            if (!ChangePassword1.CurrentPassword.Equals(ChangePassword1.NewPassword, StringComparison.CurrentCultureIgnoreCase))
            {
                int rowsAffected = 0;
                string query = "UPDATE [Users] SET [Password] = @NewPassword WHERE [Email] = @Username AND [Password] = @CurrentPassword";
                string constr = ConfigurationManager.ConnectionStrings["MoodeeConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Parameters.AddWithValue("@Username", this.Page.User.Identity.Name);
                            cmd.Parameters.AddWithValue("@CurrentPassword", ChangePassword1.CurrentPassword);
                            cmd.Parameters.AddWithValue("@NewPassword", ChangePassword1.NewPassword);
                            cmd.Connection = con;
                            con.Open();
                            rowsAffected = cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                    if (rowsAffected > 0)
                    {
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "Password is changed Successfully" + "');", true);
                    }
                    else
                    {

                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "Password is changed Successfully" + "');", true);
                    }
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "Password is changed Successfully" + "');", true);
            }

            e.Cancel = true;
        }
    }
}