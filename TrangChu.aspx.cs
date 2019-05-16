using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class demo : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        CheckDN();
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
        Session["Tendangnhap"] = null;
        Response.Redirect("TrangChu.aspx");
        btdangxuat.Visible = false;
    }
}