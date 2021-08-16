using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Cart : System.Web.UI.Page
{
    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString10"].ConnectionString);
    SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString10"].ConnectionString);
    
    int sum = 0;
    int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            Label1.Text = Session["id"].ToString();
        }
        con1.Open();
        SqlCommand cmd = new SqlCommand("select Name, ContactNo from Registration where Email = '"+Session["id"]+"'", con1);
        
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        Label9.Text = reader["Name"].ToString();
        Label10.Text = reader["ContactNo"].ToString();
        con1.Close();

        //Display  the Totals 
        double total = 0;
        foreach (GridViewRow gvr in GridView1.Rows)
        {
            Label lb = (Label)gvr.Cells[1].FindControl("Label12");
            double sum;
            if (double.TryParse(lb.Text.Trim(), out sum))
            {
                total += sum;
            }
        }

        Label4.Text = total.ToString();  

        //Discount
        double grandtot = 0;
        double disamt = 0;
        SqlCommand acmd = new SqlCommand("select Status, CustomerID from Cart where Status = 'Inactive' and CustomerID = '"+Session["id"]+"'", con3);
        SqlDataAdapter sda = new SqlDataAdapter(acmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con3.Open();
        int i = acmd.ExecuteNonQuery();
        con3.Close();
        if (dt.Rows.Count <= 0)
        {
            grandtot = total - (total * 25 / 100);
            Label7.Text = grandtot.ToString();
            Label6.Text = "25%";
            disamt = total - grandtot;
            Label8.Text = disamt.ToString();
        }
        else 
        {
            Label6.Text = "0 Discount";
            Label8.Text = "0";
            Label7.Text = total.ToString();
        }
        

        //Count
        con3.Open();
        SqlCommand bcmd = new SqlCommand("select count(*) from Cart where Status = 'Active' AND CustomerID = '" + Session["id"] + "'", con3);
        count = (int)bcmd.ExecuteScalar();
        if (count > 0)
        {
            Label11.Text = " " + count + " ";
            
        }
        con3.Close();
    }
    protected void Button17_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Index.aspx");
    } 
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Update Query
        if (String.IsNullOrEmpty(TextBox1.Text))
        {

        }
        else
        {
            con3.Open();
            SqlCommand bccmd = new SqlCommand("UPDATE Cart SET Address = @Address, DateTimeOfPurchase = @DateTimeOfPurchase, Status = @Status where Status = 'Active' and CustomerID = '" + Session["id"] + "'", con3);
            bccmd.Parameters.AddWithValue("@Address", TextBox1.Text);
            bccmd.Parameters.AddWithValue("@DateTimeOfPurchase", DateTime.Now);
            bccmd.Parameters.AddWithValue("@Status", "Inactive");
            bccmd.ExecuteNonQuery();
            Response.Redirect("Order Placed.aspx");
            con3.Close();
        }
        
        

        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con3.Open();
        SqlCommand bccmd = new SqlCommand("UPDATE Cart SET Status = @Status where Status = 'Active' and CustomerID = '" + Session["id"] + "'", con3);
        bccmd.Parameters.AddWithValue("@Status", "Item Removed");
        bccmd.ExecuteNonQuery();
        con3.Close();
    }
}