using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace MyPhone
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["User"];

            if (cookie != null)
            {
                if (cookie["username"] != null && cookie["password"] != null)
                {
                    Session["currentuser"] = cookie["username"];
                    Response.Redirect("SelfService.aspx");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string password, username;

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["userinfo"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT Password FROM userinfo WHERE Username = '" + TextBox1.Text + "' OR PhoneNumber = '" + TextBox1.Text + "' ;", con);
                SqlCommand cmd2 = new SqlCommand("SELECT Username FROM userinfo WHERE Username = '" + TextBox1.Text + "' OR PhoneNumber = '" + TextBox1.Text + "' ;", con);

                con.Open();
                
                password = (string) cmd.ExecuteScalar();
                username = (string) cmd2.ExecuteScalar();
            }

            if (TextBox2.Text == password)
            {
                if (CheckBox1.Checked)
                {
                    HttpCookie cookie = new HttpCookie("User");
                    cookie["username"] = username;
                    cookie["password"] = TextBox2.Text;
                    cookie.Expires = DateTime.Now.AddDays(1);

                    Response.Cookies.Add(cookie);
                }

                Session["currentuser"] = username;

                Response.Redirect("SelfService.aspx");
            }
            else
            {
                Panel8.Visible = true;
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}