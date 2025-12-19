using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-1BUA3D4J\SQLEXPRESS;Initial Catalog=F&H;Integrated Security=True");
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Login (name, email, password) VALUES (@name, @email, @password)", con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@password", TextBox3.Text);

            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("Registration successful");
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("Registration failed");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            con.Close();
        }
    }
    
}
