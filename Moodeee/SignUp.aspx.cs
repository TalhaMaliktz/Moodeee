using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Moodeee
{
    public partial class SignUp : System.Web.UI.Page
    {
        string gender;
        public string GetGender()
        {
            if (RadioMale.Checked == true)
            {
                gender = "Male";
            }
            else
            {
                gender = "Female";
            }
            return gender;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            SetFocus(FirstName);
            if (!Page.IsPostBack)
            {

            }
        }
        protected void RegisterUser(object sender, EventArgs e)
        {
            int userId = 0;
            string constr = ConfigurationManager.ConnectionStrings["MoodeeConnectionString"].ConnectionString;
            

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Insert_User"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@FirstName", FirstName.Text.Trim());
                        cmd.Parameters.AddWithValue("@LastName", LastName.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", Email.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", Password.Text.Trim());
                        cmd.Parameters.AddWithValue("@Date", Date.Text.Trim());
                        cmd.Parameters.AddWithValue("@Gender", GetGender().Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
                string message = string.Empty;

               
                switch (userId)
                {
                    case -1:
                        message = "Username already exists.\\nPlease choose a different username.";
                        break;
                    case -2:
                        message = "Supplied email address has already been used.";
                        break;
                    default:
                        message = "Registration successful.";
                       
                        break;
                }
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
                Response.Redirect("~/Login.aspx");
            }
        }

    }
}