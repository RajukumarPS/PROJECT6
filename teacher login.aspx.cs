using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace Project6
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username =txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (ValidateUser(username, password))
            {
                Session["Username"] = username;
                Response.Redirect("Dashboard.aspx"); // Redirect to dashboard after login
            }
            else
            {
                lblMessage.Text = "Invalid username or password!";
            }
        }

        private bool ValidateUser(string username, string password)
        {
            bool isValid = false;

            string connString = ConfigurationManager.ConnectionStrings["Project6DB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = "SELECT COUNT(1) FROM Teacher WHERE Username = @Username AND Password = @Password";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Password", password); // Ideally, use hashed passwords

                    conn.Open();
                    int count = Convert.ToInt32(cmd.ExecuteScalar());
                    isValid = count > 0;
                }
            }
            return isValid;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtPassword.Text = "";
            lblMessage.Text = "";
        }
    }
}
