using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Home : System.Web.UI.Page
{
    SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString10"].ConnectionString);
    int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            Label1.Text = Session["id"].ToString();
        }

        //Count
        con3.Open();
        SqlCommand bcmd = new SqlCommand("select count(*) from Cart where Status = 'Active' AND CustomerID = '" + Session["id"] + "'", con3);
        count = (int)bcmd.ExecuteScalar();
        if (count > 0)
        {
            Label4.Text = " " + count + " ";
        }
        con3.Close();
    }
    protected void Button17_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Index.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {   
        con3.Open(); 
        SqlCommand accmd = new SqlCommand("insert into Cart(ItemName, ItemPrice, Quantity, Status, CustomerId) values (@ItemName, @ItemPrice, @Quantity, @Status, @CustomerId)", con3);
        accmd.Parameters.AddWithValue("@ItemName", GridView1.SelectedRow.Cells[0].Text);
        accmd.Parameters.AddWithValue("@ItemPrice", GridView1.SelectedRow.Cells[1].Text);
        TextBox box1 = (TextBox)GridView1.SelectedRow.Cells[2].FindControl("TextBox1");
        accmd.Parameters.AddWithValue("@Quantity", box1.Text);
        accmd.Parameters.AddWithValue("@Status", "Active");
        accmd.Parameters.AddWithValue("@CustomerId", Label1.Text);
        accmd.ExecuteNonQuery();
        con3.Close();

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        con3.Open();
        SqlCommand accmd = new SqlCommand("insert into Cart(ItemName, ItemPrice, Quantity, Status, CustomerId) values (@ItemName, @ItemPrice, @Quantity, @Status, @CustomerId)", con3);
        accmd.Parameters.AddWithValue("@ItemName", GridView2.SelectedRow.Cells[0].Text);
        accmd.Parameters.AddWithValue("@ItemPrice", GridView2.SelectedRow.Cells[1].Text);
        TextBox box2 = (TextBox)GridView2.SelectedRow.Cells[2].FindControl("TextBox2");
        accmd.Parameters.AddWithValue("@Quantity", box2.Text);
        accmd.Parameters.AddWithValue("@Status", "Active");
        accmd.Parameters.AddWithValue("@CustomerId", Label1.Text);
        accmd.ExecuteNonQuery();
        con3.Close();
    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        con3.Open();
        SqlCommand accmd = new SqlCommand("insert into Cart(ItemName, ItemPrice, Quantity, Status, CustomerId) values (@ItemName, @ItemPrice, @Quantity, @Status, @CustomerId)", con3);
        accmd.Parameters.AddWithValue("@ItemName", GridView3.SelectedRow.Cells[0].Text);
        accmd.Parameters.AddWithValue("@ItemPrice", GridView3.SelectedRow.Cells[1].Text);
        TextBox box3 = (TextBox)GridView3.SelectedRow.Cells[2].FindControl("TextBox3");
        accmd.Parameters.AddWithValue("@Quantity", box3.Text);
        accmd.Parameters.AddWithValue("@Status", "Active");
        accmd.Parameters.AddWithValue("@CustomerId", Label1.Text);
        accmd.ExecuteNonQuery();
        con3.Close();
    }
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {
        con3.Open();
        SqlCommand accmd = new SqlCommand("insert into Cart(ItemName, ItemPrice, Quantity, Status, CustomerId) values (@ItemName, @ItemPrice, @Quantity, @Status, @CustomerId)", con3);
        accmd.Parameters.AddWithValue("@ItemName", GridView4.SelectedRow.Cells[0].Text);
        accmd.Parameters.AddWithValue("@ItemPrice", GridView4.SelectedRow.Cells[1].Text);
        TextBox box4 = (TextBox)GridView4.SelectedRow.Cells[2].FindControl("TextBox4");
        accmd.Parameters.AddWithValue("@Quantity", box4.Text);
        accmd.Parameters.AddWithValue("@Status", "Active");
        accmd.Parameters.AddWithValue("@CustomerId", Label1.Text);
        accmd.ExecuteNonQuery();
        con3.Close();
    }
    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {
        con3.Open();
        SqlCommand accmd = new SqlCommand("insert into Cart(ItemName, ItemPrice, Quantity, Status, CustomerId) values (@ItemName, @ItemPrice, @Quantity, @Status, @CustomerId)", con3);
        accmd.Parameters.AddWithValue("@ItemName", GridView5.SelectedRow.Cells[0].Text);
        accmd.Parameters.AddWithValue("@ItemPrice", GridView5.SelectedRow.Cells[1].Text);
        TextBox box5 = (TextBox)GridView5.SelectedRow.Cells[2].FindControl("TextBox5");
        accmd.Parameters.AddWithValue("@Quantity", box5.Text);
        accmd.Parameters.AddWithValue("@Status", "Active");
        accmd.Parameters.AddWithValue("@CustomerId", Label1.Text);
        accmd.ExecuteNonQuery();
        con3.Close();
    }
    protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
    {
        con3.Open();
        SqlCommand accmd = new SqlCommand("insert into Cart(ItemName, ItemPrice, Quantity, Status, CustomerId) values (@ItemName, @ItemPrice, @Quantity, @Status, @CustomerId)", con3);
        accmd.Parameters.AddWithValue("@ItemName", GridView6.SelectedRow.Cells[0].Text);
        accmd.Parameters.AddWithValue("@ItemPrice", GridView6.SelectedRow.Cells[1].Text);
        TextBox box6 = (TextBox)GridView6.SelectedRow.Cells[2].FindControl("TextBox6");
        accmd.Parameters.AddWithValue("@Quantity", box6.Text);
        accmd.Parameters.AddWithValue("@Status", "Active");
        accmd.Parameters.AddWithValue("@CustomerId", Label1.Text);
        accmd.ExecuteNonQuery();
        con3.Close();
    }
    protected void GridView7_SelectedIndexChanged(object sender, EventArgs e)
    {
        con3.Open();
        SqlCommand accmd = new SqlCommand("insert into Cart(ItemName, ItemPrice, Quantity, Status, CustomerId) values (@ItemName, @ItemPrice, @Quantity, @Status, @CustomerId)", con3);
        accmd.Parameters.AddWithValue("@ItemName", GridView7.SelectedRow.Cells[0].Text);
        accmd.Parameters.AddWithValue("@ItemPrice", GridView7.SelectedRow.Cells[1].Text);
        TextBox box7 = (TextBox)GridView7.SelectedRow.Cells[2].FindControl("TextBox7");
        accmd.Parameters.AddWithValue("@Quantity", box7.Text);
        accmd.Parameters.AddWithValue("@Status", "Active");
        accmd.Parameters.AddWithValue("@CustomerId", Label1.Text);
        accmd.ExecuteNonQuery();
        con3.Close();
    }
    protected void GridView8_SelectedIndexChanged(object sender, EventArgs e)
    {
        con3.Open();
        SqlCommand accmd = new SqlCommand("insert into Cart(ItemName, ItemPrice, Quantity, Status, CustomerId) values (@ItemName, @ItemPrice, @Quantity, @Status, @CustomerId)", con3);
        accmd.Parameters.AddWithValue("@ItemName", GridView8.SelectedRow.Cells[0].Text);
        accmd.Parameters.AddWithValue("@ItemPrice", GridView8.SelectedRow.Cells[1].Text);
        TextBox box8 = (TextBox)GridView8.SelectedRow.Cells[2].FindControl("TextBox8");
        accmd.Parameters.AddWithValue("@Quantity", box8.Text);
        accmd.Parameters.AddWithValue("@Status", "Active");
        accmd.Parameters.AddWithValue("@CustomerId", Label1.Text);
        accmd.ExecuteNonQuery();
        con3.Close();
    }
}