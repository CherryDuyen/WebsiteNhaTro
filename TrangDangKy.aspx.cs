using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;


public partial class TrangDangKy : System.Web.UI.Page
{
    protected void lamlai_Click(object sender, EventArgs e)
    {

        txttendangnhap.Text = "";
        txtemail.Text = "";
        txtpassword.Text = "";
        txtpassword1.Text = "";
        txtdiachi.Text = "";
        txtsdt.Text = "";
    }

    protected void thoat_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }

    protected void btndangky_Click(object sender, EventArgs e)
    {
        clDangKyTT dangky = new clDangKyTT();

        if (dangky.Kiemtradangnhap(txttendangnhap.Text))
        {
            Response.Write("<script> alert('Tên đăng nhập đã tồn tai!!!!Vui lòng đăng ký lai.')</script>");
            txttendangnhap.Focus();
            txttendangnhap.Text = "";
        }
        else if (dangky.kiemtraemail(txtemail.Text))
        {
            Response.Write("<script> alert('Email đã tồn tại !!Vui lòng đăng ký Email mới!')</script>");
            txtemail.Focus();
            txtemail.Text = "";
        }
        else
        {
            dangky.Dlkhachhang(txttendangnhap.Text, txtemail.Text, txtpassword.Text, txtdiachi.Text, txtsdt.Text);
            txttendangnhap.Text = "";
            txtemail.Text = "";
            txtpassword.Text = "";
            txtpassword1.Text = "";
            txtdiachi.Text = "";
            txtsdt.Text = "";
            Response.Redirect("~/Default.aspx");
            Response.Write("<script> alert('Đăng ký thành công')</script>");
        }
    }
    public string convertToUnSign2(string s)
    {
        string stFormD = s.Normalize(NormalizationForm.FormD);
        StringBuilder sb = new StringBuilder();
        for (int ich = 0; ich < stFormD.Length; ich++)
        {
            System.Globalization.UnicodeCategory uc = System.Globalization.CharUnicodeInfo.GetUnicodeCategory(stFormD[ich]);
            if (uc != System.Globalization.UnicodeCategory.NonSpacingMark)
            {
                sb.Append(stFormD[ich]);
            }
        }
        sb = sb.Replace('Đ', 'D');
        sb = sb.Replace('đ', 'd');
        return (sb.ToString().Normalize(NormalizationForm.FormD));
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}