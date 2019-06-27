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
    public partial class SelfService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["currentuser"].ToString();

            string username = Session["currentuser"].ToString(), phoneNumber = "", email = "", pack;
            int pack_id = 0;

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["userinfo"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT PHONENUMBER, EMAIL, PACK_ID FROM USERINFO WHERE USERNAME = '"+username+"';", con);

                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                if (rdr.HasRows)
                {
                    rdr.Read();
                    phoneNumber = rdr["PhoneNumber"].ToString();
                    email = rdr["Email"].ToString();
                    pack_id = (int) rdr["Pack_id"];
                }

                rdr.Close();    

                SqlCommand cmd2 = new SqlCommand("SELECT NAME FROM PACKS WHERE ID = " + pack_id + ";", con);
                pack = cmd2.ExecuteScalar().ToString();

            }

            Label2.Text = username;
            Label3.Text = phoneNumber;
            Label4.Text = email;
            Label5.Text = pack;
        }

        protected void LogOut_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["User"];

            if (cookie != null)
            {
                cookie.Expires = DateTime.Now.AddDays(0);

                Response.Cookies.Add(cookie);
            }
            
            Response.Redirect("Homepage.aspx");

        }
    }
}