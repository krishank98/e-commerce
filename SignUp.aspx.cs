using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class SignUp : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtsingnup_Click(Object sender, EventArgs e)
    {
        
        if (isformvalid())
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyMobileDB"].ConnectionString))
            {
                
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblUsers(Username,Password,Email,Name,Usertype)Values('" + txtUname.Text + "','" + txtPass.Text + "','" + txtEmail.Text + "','" + txtName.Text + "','User')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert ('Registration Successfully Done');</script>");
                clr();
                con.Close();
                lblMsg.Text = "Registration Successfully Done";
                lblMsg.ForeColor = System.Drawing.Color.Green;
               

            }
            Response.Redirect("~/SignIn.aspx");
        }
        else
        {
            lblMsg.Text = "All fields are mandatory";
            lblMsg.ForeColor = System.Drawing.Color.Red;
            Response.Write("<script>alert('Registration Faild');</script>");

        }
        


        bool isformvalid()
        {
            if (txtUname.Text == "")
            {
                Response.Write("<script>alert('Username is not valid');</script");
                txtUname.Focus();
                return false;
            }
            else if (txtPass.Text != txtCPass.Text)
            {
                Response.Write("<script>alert('Password is not valid');</script");
                txtUname.Focus();
                return false;
            }
            else if (txtEmail.Text == "")
            {
                Response.Write("<script>alert('Email is not valid');</script");
                txtUname.Focus();
                return false;
            }
            else if (txtName.Text == "")
            {
                Response.Write("<script>alert('Name is not valid');</script");
                txtUname.Focus();
                return false;
            }

            return true;
           
        }
    }
    private void clr()
    {
        txtName.Text = string.Empty;
        txtPass.Text = string.Empty;
        txtCPass.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtUname.Text = string.Empty;
    }
}

