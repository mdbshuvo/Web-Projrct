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
    public partial class MoreInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text;

            Panel3.Visible = false;

            if (!email.Contains('@') || !email.Contains('.'))
            {
                Panel3.Visible = true;
                return;
            }

            int pack_id = Convert.ToInt32(DropDownList1.SelectedValue);
            string username = Session["currentuser"].ToString();

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["userinfo"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("UPDATE USERINFO SET EMAIL = '"+email+"', PACK_ID = "+pack_id+" WHERE USERNAME = '"+username+"' ;", con);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            Response.Redirect("SelfService.aspx");
        }
    }
}