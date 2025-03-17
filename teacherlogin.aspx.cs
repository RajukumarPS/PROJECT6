using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nanda_Kishore
{
    public partial class teacherlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = Text1.Text.Trim();
            string password = Text2.Text.Trim();

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                Response.Write("<script>alert('Username or Password cannot be empty');</script>");
                return;
            }

            // Database connection string
            string connStr = "server=LAPTOP-7042JOCD\\SQLEXPRESS; Trusted_Connection=True; Database=Project6;";

            using (SqlConnection con = new SqlConnection(connStr))
            {
                try
                {
                    con.Open();
                    string query = "SELECT COUNT(*) FROM teacher WHERE Username=@username AND Password=@password";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@username", username);
                        cmd.Parameters.AddWithValue("@password", password);

                        int count = (int)cmd.ExecuteScalar();

                        if (count > 0)
                        {
                            Response.Write("<script>alert('Login Successful');</script>");
                            // Redirect to another page if needed
                            Response.Redirect("teacherhome.html");
                        }
                        else
                        {
                            Response.Write("<script>alert('Invalid Username or Password');</script>");
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Database Error: " + ex.Message + "');</ script > ");
                }
            }
        }
    }
}