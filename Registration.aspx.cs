using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;
using System.Collections.Specialized;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString10"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select email from registration where email = @email ", con1);
        cmd.Parameters.AddWithValue("@email", TextBox2.Text);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con1.Open();
        int i = cmd.ExecuteNonQuery();

        if (dt.Rows.Count > 0)
        {
            Label4.Text = "Email already exsist";

        }
        else
        {
            Random random = new Random();
            int value = random.Next(1001, 9999);
            string destinationaddr = "+91" + TextBox3.Text;
            string message = "Your OTP code is - " + value;

            String message1 = HttpUtility.UrlEncode(message);

            using (var webclient = new WebClient())
            {
                byte[] response = webclient.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                    {"apikey" , "N2I3ZmIwY2M2ZTk1ZTJiYjVlYmQ2NWYwNzhkMDllOWI="},
                    {"numbers" , destinationaddr},
                    {"message" , message1},
                    {"sender" , "Laundry Wala"}});
                string result = System.Text.Encoding.UTF8.GetString(response);
                Session["otp"] = value;
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox5.Text == Session["otp"].ToString())
        {

            SqlCommand accmd = new SqlCommand("insert into Registration(Name, Email, ContactNo, Password, DateTimeOfRegistration) values (@Name, @Email, @ContactNo, @Password, @DateTimeOfRegistration)", con1);
            accmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            accmd.Parameters.AddWithValue("@Email", TextBox2.Text);
            accmd.Parameters.AddWithValue("@ContactNo", TextBox3.Text);
            accmd.Parameters.AddWithValue("@Password", TextBox4.Text);
            accmd.Parameters.AddWithValue("@DateTimeOfRegistration", DateTime.Now);
            accmd.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
            con1.Close();
        }
        else
        {
            Label4.Text = "Incorrect OTP";
        }
    }
}