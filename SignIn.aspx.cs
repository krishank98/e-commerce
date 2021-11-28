using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["Username"] != null && Request.Cookies["Password"] != null)
            {
                txtUser.Text = Request.Cookies["Username"].Value;
                txtPass.Text = Request.Cookies["Password"].Value;
                CheckBox1.Checked = true;

            }
        }
    }
    protected void BtnLogin_Click(object sender , EventArgs e)
    {
       

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyMobileDB"].ConnectionString))
            {
              
                con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblUsers where Username=@username and Password=@password", con);
          
            cmd.Parameters.AddWithValue("@username", txtUser.Text);
            cmd.Parameters.AddWithValue("@password", txtPass.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count !=0)
                {
                if (CheckBox1.Checked)
                {
                    Response.Cookies["Username"].Value = txtUser.Text;
                    Response.Cookies["Password"].Value = txtPass.Text;

                    Response.Cookies["Username"].Expires = DateTime.Now.AddDays(10);

                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(10);
                }
                else
                {
                    Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1);

                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
                }
                //    Session["Username"] = txtUser.Text;
                //   Response.Redirect("~/UserHome.aspx");
                String Utype;
                Utype= dt.Rows[0][5].ToString().Trim();
                if (Utype == "User")
                {
                    Session["Username"] = txtUser.Text;
                    Response.Redirect("~/UserHome.aspx");
                }
                if(Utype=="Admin")
                {
                    Session["Username"] = txtUser.Text;
                    Response.Redirect("~/AdminHome.aspx");
                }
            }
            else
            {
                errorButton.Text = "wrong username and password";
            }
               
                clr();
            con.Close();
            }
        }


    private void clr()
    {
        txtPass.Text = string.Empty;
        txtUser.Text = string.Empty;
        txtUser.Focus();

    }
}
