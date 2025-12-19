using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class Login : System.Web.UI.Page
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
            SqlCommand cmd= new SqlCommand("select count(*) from Login where email='"+ TextBox1.Text+"' and password='"+TextBox2.Text +"' ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            if (dt.Rows[0][0].ToString() == "1")
            {
                Response.Write("login");
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("failed");
            }
            }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
