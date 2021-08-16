using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Privacy_Policy : System.Web.UI.Page
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
}