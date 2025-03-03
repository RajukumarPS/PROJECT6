using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Nanda_Kishore
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text.Trim();
            string password = TextBox2.Text.Trim();

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                Response.Write("<script>alert('Username or Password cannot be empty');</script>");
                return;
            }

            
            string connStr = "server=LAPTOP-7042JOCD\\SQLEXPRESS; Trusted_Connection=True; Database=project6;";

            using (SqlConnection con = new SqlConnection(connStr))
            {
                try
                {
                    con.Open();
                    string query = "SELECT COUNT(*) FROM Adminlogintable WHERE Username=@username AND Password=@password";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@username", username);
                        cmd.Parameters.AddWithValue("@password", password);

                        int count = (int)cmd.ExecuteScalar();

                        if (count > 0)
                        {
                            Response.Write("<script>alert('Login Successful');</script>");
                            
                            Response.Redirect("2nd Admin home.aspx");
                        }
                        else
                        {
                            Response.Write("<script>alert('Invalid Username or Password');</script>");
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Database Error: " + ex.Message + "');</script>");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //TextBox1.Clear();
            //TextBox2.Text = string.Empty;

        }
}
}