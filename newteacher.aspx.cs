using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Nanda_Kishore
{
    public partial class newteacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) // Ensures all validation checks pass
            {
                string username = TextBox1.Text;
                string password = TextBox2.Text;

                try
                {
                    string connStr = "server=LAPTOP-7042JOCD\\SQLEXPRESS; Trusted_Connection=True; Database=Project6;";
                    using (SqlConnection conn = new SqlConnection(connStr))
                    {
                        string query = "INSERT INTO teacher (username, password) VALUES (@username, @password)";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@username", username);
                            cmd.Parameters.AddWithValue("@password", password);


                            conn.Open();
                            cmd.ExecuteNonQuery();
                            Label3.Text = "Student added successfully!";
                            Label3.ForeColor = System.Drawing.Color.Green;
                        }
                    }
                }
                catch (Exception ex)
                {
                    Label3.Text = "Error: " + ex.Message;
                    Label3.ForeColor = System.Drawing.Color.Red;

                }
            }
        }
    }
}