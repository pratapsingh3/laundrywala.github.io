using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString10"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select Email, Password from Registration where Email = @Email and Password = @Password", con1);
        cmd.Parameters.AddWithValue("@Email", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con1.Open();
        int i = cmd.ExecuteNonQuery();
        con1.Close();

        if (dt.Rows.Count > 0)
        {
            Session["id"] = TextBox1.Text;

            Response.Redirect("Home.aspx");
            Session.RemoveAll();
        }
        else
        {
            Label1.Text = "* Your username or password is incorrect";
            Label1.ForeColor = System.Drawing.Color.White;

        }
    }
}