using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Linq;

public partial class TrangLienHe : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        CheckDN();
    }
    protected void btngui_Click(object sender, EventArgs e)
    {
        try
        {
            string email = txtEmail.Text;

            MailMessage objeto_mail = new MailMessage();
            MailMessage toServer = new MailMessage();
            SmtpClient client = new SmtpClient();
            client.EnableSsl = true;
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.Timeout = 20000;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential("skycloud1096@gmail.com", "hoanganh96honguyen");
            toServer.From = new MailAddress("nguyenthimyduyen2397@gmail.com");
            toServer.To.Add(new MailAddress("nguyenthimyduyen2397@gmail.com"));
            objeto_mail.From = new MailAddress(email);
            objeto_mail.To.Add(new MailAddress("nguyenthimyduyen2397@gmail.com"));
            toServer.Subject = "Liên hệ Mới";
            toServer.Body = TxtTen.Text + " đã liên hệ với bạn \n SDT Liên hệ là: " + txtSDT.Text + "\n Nội dung: " + txtNoiDung.Text; ;
            objeto_mail.Subject = "Password Recover";
            objeto_mail.Body = "Cảm ơn bạn "+TxtTen.Text+" đã liên hệ với chúng tôi! \n SDT Liên hệ là: " +txtSDT.Text+"\n Nội dung: "+txtNoiDung.Text;
            client.Send(objeto_mail);
        }
        catch (Exception ex)
        {
            Response.Write("Không thể gửi liên hệ. Vui lòng kiểm tra lại!" + ex.Message);
        }
    }
    private void resetform()
    {

        TxtHo.Text = "";
        txtNoiDung.Text = "";
        txtSDT.Text = "";
        TxtTen.Text = "";
        txtEmail.Text = "";
    }
    private string mailbody()
    {
        string strHTML = "";
        strHTML += "Họ : " + TxtHo.Text;
        strHTML += "Tên : " + TxtTen.Text;
        strHTML += "Điện thoại :" + txtSDT.Text;
        strHTML += "Email :" + txtEmail.Text;
        strHTML += "Đã gửi qua form liên hệ với thông điệp: ";
        strHTML += txtNoiDung.Text;
        return strHTML;

    }
    private void CheckDN()
    {
        try
        {
            string TenDN = Session["Tendangnhap"].ToString();
            if (TenDN == null || TenDN == string.Empty || TenDN == "")
            {
                lbtendn.Visible = false;
                btdangxuat.Visible = false;
                btndangky.Visible = true;
                btndangnhap.Visible = true;
            }
            else
            {
                lbtendn.Visible = true;
                btdangxuat.Visible = true;
                btndangky.Visible = false;
                btndangnhap.Visible = false;
                lbtendn.Text = "Xin Chào:" + TenDN + " /";
                btdangxuat.Text = "Đăng Xuất";
            }
        }
        catch (Exception)
        {

        }
    }

    protected void btdangxuat_Click(object sender, EventArgs e)
    {

    }
}