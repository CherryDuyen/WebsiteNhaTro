using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangTimKiemSP : System.Web.UI.Page
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
    protected void btndangky_Click(object sender, EventArgs e)
    {

    }
    protected void btdangxuat_Click(object sender, EventArgs e)
    {

    }
    protected void btntimkiem2_Click(object sender, EventArgs e)
    {
        //BDSTableAdapters.SanPham1TableAdapter a = new BDSTableAdapters.SanPham1TableAdapter();
        string sChuoi = txttimkiem.Text;
        Response.Redirect("~/TrangTimKiemSP.aspx?a=" + sChuoi + "");
    }
}