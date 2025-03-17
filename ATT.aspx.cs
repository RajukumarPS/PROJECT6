using System;
using System.Data.SqlClient;
using System.Configuration;

namespace StudentApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) // Ensures all validation checks pass
            {
                string name = txtName.Text;
                string usn = txtUSN.Text;
                string branch = ddlBranch.SelectedValue;
                string section = txtSection.Text;

                try
                {
                    string connStr = "server=LAPTOP-7042JOCD\\SQLEXPRESS; Trusted_Connection=True; Database=Project6;";
                    using (SqlConnection conn = new SqlConnection(connStr))
                    {
                        string query = "INSERT INTO students (name, usn, branch, section) VALUES (@name, @usn, @branch, @section)";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Name", name);
                            cmd.Parameters.AddWithValue("@USN", usn);
                            cmd.Parameters.AddWithValue("@Branch", branch);
                            cmd.Parameters.AddWithValue("@Section", section);

                            conn.Open();
                            cmd.ExecuteNonQuery();
                            lblMessage.Text = "Student added successfully!";
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                        }
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}
