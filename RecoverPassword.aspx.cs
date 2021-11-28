using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RecoverPassword : System.Web.UI.Page
{
    String GuidValue;
    DataTable dt = new DataTable();
    int Uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyMobileDB"].ConnectionString))
        {
            con.Open();
            GuidValue = Request.QueryString["id"];
            if (GuidValue != null)
            {
                SqlCommand cmd = new SqlCommand("Select * from ForgotPass where ID=@Id", con);
                cmd.Parameters.AddWithValue("@Id", GuidValue);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    Uid = Convert.ToInt32(dt.Rows[0][1]);
                }
                else
                {

                    message.Text = "Link Expired ";
                    message.ForeColor = System.Drawing.Color.Red;
                }
               

            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }

        if (!IsPostBack)
        {
            if (dt.Rows.Count != 0)
            {
                password_textbox.Visible = true;
                text_confirmpassword.Visible = true;
                Reset.Visible = true;
            }
            
           
        }
    }
    protected void reset_password(object sender, EventArgs e)
    {
        if (password_textbox.Text!=null && text_confirmpassword.Text!=null && password_textbox.Text == text_confirmpassword.Text)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyMobileDB"].ConnectionString))
            {
                con.Open();
                SqlCommand sql = new SqlCommand("update tblUsers set Password=@p where Uid=@Uid", con);
                sql.Parameters.AddWithValue("@p", password_textbox.Text);
                sql.Parameters.AddWithValue("@Uid", Uid);
                sql.ExecuteNonQuery();
                SqlCommand cmd2 = new SqlCommand("delete from ForgotPass where Uid'" + Uid + "'", con);
                cmd2.ExecuteNonQuery();
                Response.Write("<script> alert('Password updated Sucessfully'); </script>");
                Response.Redirect("~/SignIn.aspx");

            }
        }
    }
}