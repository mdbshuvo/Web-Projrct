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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Button2.Enabled = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel8.Visible = false;
            Panel14.Visible = false;

            if (TextBox2.Text != TextBox4.Text)
            {
                Panel13.Visible = true;
            }
            else
            {
                Panel13.Visible = false;
                char sample = TextBox3.Text.ToString() == "" ? 'a' : TextBox3.Text.ToString()[0];

                if ((sample != '+' && sample < '0' && sample > '9') || TextBox1.Text.ToString() == "" || TextBox3.Text.ToString() == "" || TextBox2.Text.ToString() == "")
                {
                    Panel8.Visible = true;
                    return;
                }

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["userinfo"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO userinfo (USERNAME, PHONENUMBER, PASSWORD) VALUES ( '"+TextBox1.Text+"','"+TextBox3.Text+"','"+TextBox2.Text+"' );", con);
                    SqlCommand checkCmd = new SqlCommand("SELECT COUNT(Password) FROM userinfo WHERE Username = '" + TextBox1.Text + "' OR PhoneNumber = '" + TextBox3.Text + "' ;", con);

                    con.Open();

                    int count = (int) checkCmd.ExecuteScalar();

                    if (count == 0)
                    {
                        cmd.ExecuteNonQuery();

                        Session["currentuser"] = TextBox1.Text;

                        Response.Redirect("MoreInfo.aspx");
                    }
                    else
                    {
                        Panel14.Visible = true;
                    }
                    
                }

                    
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            Button2.Enabled = CheckBox1.Checked;
        }
        
    }
}