using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void recovery_passLink(object sender, EventArgs e)
    {

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyMobileDB"].ConnectionString))
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblUsers where email=@Email", con);

            cmd.Parameters.AddWithValue("@email", recovery_email.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
               String guid= Guid.NewGuid().ToString();
                int uid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand sqlCommand1 = new SqlCommand("insert into ForgotPass(Id,Uid,RequestDateTime)  values ('" + guid + "','" + uid + "',GETDATE())", con);
                sqlCommand1.ExecuteNonQuery();

                String ToEmailAddress = dt.Rows[0][3].ToString();
                String Username = dt.Rows[0][1].ToString();
                String EmailBody = "Hi , " + Username + ",<br/><br /> Click Here to Reset Password <br /> <br /> http://localhost:56616/RecoverPassword.aspx?id="+guid;


                MailMessage passRecoverymail = new MailMessage("Krishankumaraa99@gmail.com", ToEmailAddress);

                passRecoverymail.Body = EmailBody;
                passRecoverymail.IsBodyHtml = true;
                passRecoverymail.Subject = "Recover your password";

                SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                SMTP.Credentials = new NetworkCredential()
                {
                    UserName = "Krishankumaraa99@gmail.com",
                    Password = "C#tRIAL@>156"


                };
                SMTP.EnableSsl = true;
                SMTP.Send(passRecoverymail);
                



                idResetPass.Text = "Succesfull";
                idResetPass.ForeColor = System.Drawing.Color.Green;
                recovery_email.Text = String.Empty;
            }
            else
            {
                idResetPass.Text = "Unsuccesfull email does not exist";
                idResetPass.ForeColor = System.Drawing.Color.Red;
                idResetPass.Text = String.Empty;
                idResetPass.Focus();

            }
        }

    }
}