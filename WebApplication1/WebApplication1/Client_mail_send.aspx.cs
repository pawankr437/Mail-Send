using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Configuration;

namespace WebApplication1
{
    public partial class Client_mail_send : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Send_Click(object sender, EventArgs e)
        {
            try{
                SmtpClient SMTP = new SmtpClient(ConfigurationManager.AppSettings["Host"].ToString(), 587);
              

                MailMessage message = new MailMessage("pawankr437@gmail.com", To.Text.ToString());

                System.Net.NetworkCredential basicCredential1 = new System.Net.NetworkCredential("pawankr437@gmail.com", ConfigurationManager.AppSettings["Password"].ToString());

                SMTP.EnableSsl = true;
                SMTP.UseDefaultCredentials = false;
                SMTP.Credentials = basicCredential1;  

//          
                
                SMTP.Send(message);

               
                Status.Visible = true;
                Status.Text = "message was sent successfully";
            }
            catch (Exception ex)
            {
                Status.Visible = true;
                Status.Text = ex.Message;
            }    
        }

       
    
    }
}