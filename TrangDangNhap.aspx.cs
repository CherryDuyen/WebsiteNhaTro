using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;

public partial class TrangDangNhap : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Tendangnhap"] = txttendangnhap.Text;
        //CkeckGioHang();
    }


    protected void btnlogin_Click(object sender, EventArgs e)
    {
        
    }
    public int phanquyen(string input)
    {
        ketnoi.cmd = new System.Data.SqlClient.SqlCommand("kiemtra_quyen", ketnoi.getconn());
        ketnoi.cmd.CommandType = System.Data.CommandType.StoredProcedure;
        ketnoi.cmd.Parameters.AddWithValue("@Tendangnhap", input);
        int maquyen = (int)ketnoi.cmd.ExecuteScalar();
        return maquyen;
    }
    protected void btndangnhap_Click(object sender, EventArgs e)
    {
        clDangKyTT dangky = new clDangKyTT();
        ketnoi.cmd = new System.Data.SqlClient.SqlCommand("Login_form1", ketnoi.getconn());
        ketnoi.cmd.CommandType = System.Data.CommandType.StoredProcedure;
        ketnoi.cmd.Parameters.AddWithValue("@taikhoan", txttendangnhap.Text);
        ketnoi.cmd.Parameters.AddWithValue("@matkhau", txtpassword.Text);
        ketnoi.rd = ketnoi.cmd.ExecuteReader();
        bool login = ketnoi.rd.Read();

        if (login)
        {
            int check = phanquyen(txttendangnhap.Text);
            switch (check)
            {
                case 2:
                    Response.Write("<script> alert('Đăng nhập thành công')</script>");
                    Response.Redirect("~/admin/TrangAdmin.aspx");
                    txttendangnhap.Focus();
                    txttendangnhap.Text = "";
                    break;

                case 1:
                    Response.Write("<script>alert('Đăng nhập thành công')");
                    Response.Redirect("Default.aspx");
                    break;
            }
        }
        else
        {
            Response.Write("<script> alert('Sai tên đăng nhập hoặc mật khẩu')</script>");
            return;
        }
    }
}