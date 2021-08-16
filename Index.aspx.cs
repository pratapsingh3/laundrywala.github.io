using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Index : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString10"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand accmd = new SqlCommand("insert into ContactForm(FirstName, LastName, Email, Subject, Message, DateTimeOfContact) values (@FirstName, @LastName, @Email, @Subject, @Message, @DateTimeOfContact)", con);
        accmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
        accmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
        accmd.Parameters.AddWithValue("@Email", TextBox3.Text);
        accmd.Parameters.AddWithValue("@Subject", TextBox4.Text);
        accmd.Parameters.AddWithValue("@Message", TextBox5.Text);
        accmd.Parameters.AddWithValue("@DateTimeofContact", DateTime.Now);
        accmd.ExecuteNonQuery();
        con.Close();
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}