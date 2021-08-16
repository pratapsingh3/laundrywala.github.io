using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Control_Pannel : System.Web.UI.Page
{
    SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString10"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        GridView1.Visible = false;
        GridView2.Visible = false;
        GridView3.Visible = false;
        GridView4.Visible = false;
        GridView5.Visible = false;
        GridView6.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        con2.Open();
        SqlCommand cmd = new SqlCommand("insert into ItemDetails(ItemName, Category, Price) values (@ItemName, @Category, @Price)", con2);
        cmd.Parameters.AddWithValue("@ItemName", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Category", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@Price", TextBox3.Text);
        cmd.ExecuteNonQuery();
        Label1.Text = "Data Saved Succesfully";
        con2.Close();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
        Label6.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView3.Visible = true;
        Label7.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        Panel1.Visible = true;
        Label5.Visible = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        GridView4.Visible = true;
        Label2.Visible = true;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        GridView5.Visible = true;
        Label3.Visible = true;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        GridView6.Visible = true;
        Label4.Visible = true;
    }
}