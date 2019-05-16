using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_TrangQuanLySanPham : System.Web.UI.Page
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void btndangky_Click1(object sender, EventArgs e)
    {

    }
    protected void btnthemsp_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            PostsListView.InsertItemPosition = InsertItemPosition.LastItem;
            TextBox tensp = (TextBox)PostsListView.InsertItem.FindControl("txttensp");
            TextBox giasp = (TextBox)PostsListView.InsertItem.FindControl("txtgiasp");
            FileUpload fileupload = (FileUpload)PostsListView.InsertItem.FindControl("uploadimg");
            ImageButton btnthemsp = (ImageButton)PostsListView.InsertItem.FindControl("btnthemsp");
            TextBox mahc = (TextBox)PostsListView.InsertItem.FindControl("txtmahoca");
            TextBox thongtin1 = (TextBox)PostsListView.InsertItem.FindControl("txtthongtin1");
            TextBox thongtin2 = (TextBox)PostsListView.InsertItem.FindControl("txtthongtin2");
            TextBox thongtin3 = (TextBox)PostsListView.InsertItem.FindControl("txtthongtin3");
            TextBox thongtin4 = (TextBox)PostsListView.InsertItem.FindControl("txtthongtin4");
            PostsListView.DataBind();
            SqlConnection con = new SqlConnection(x.strConn);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            cmd.CommandText = @"insert into SanPham(TenSanPham,GiaSanPham,HinhSanPham,MaLoaiHoCa,thongtin1,thongtin2,thongtin3,thongtin4) values (@TenSanPham,@GiaSanPham,@HinhSanPham,@MaLoaiHoCa,@thongtin1,@thongtin2,@thongtin3,@thongtin4)";
            cmd.Parameters.Add("@Tensanpham", SqlDbType.NVarChar, 50);
            cmd.Parameters["@TenSanPham"].Value = tensp.Text;
            cmd.Parameters.Add("@GiaSanPham", SqlDbType.Float);
            cmd.Parameters["@GiaSanPham"].Value = Convert.ToInt32(giasp.Text);
            cmd.Parameters.Add("@HinhSanPham", SqlDbType.NVarChar, 50);
            //Lay ten tap tin
            string sTenfile = Path.GetFileName(fileupload.FileName);
            //string sTenfile = fileupload.FileName;
            cmd.Parameters["@HinhSanPham"].Value = "/shop/images/" + sTenfile.ToString();
            //Thuc hien chep tap tin lên thu muc Upload
            fileupload.SaveAs(MapPath("../shop/images/" + sTenfile));
            cmd.Parameters.Add("@MaLoaiHoCa", SqlDbType.Int);
            cmd.Parameters["@MaLoaiHoCa"].Value = int.Parse(mahc.Text);
            cmd.Parameters.Add("@thongtin1", SqlDbType.NVarChar, 500);
            cmd.Parameters["@thongtin1"].Value = thongtin1.Text;
            cmd.Parameters.Add("@thongtin2", SqlDbType.NVarChar, 500);
            cmd.Parameters["@thongtin2"].Value = thongtin2.Text;
            cmd.Parameters.Add("@thongtin3", SqlDbType.NVarChar, 500);
            cmd.Parameters["@thongtin3"].Value = thongtin3.Text;
            cmd.Parameters.Add("@thongtin4", SqlDbType.NVarChar, 500);
            cmd.Parameters["@thongtin4"].Value = thongtin4.Text;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("/admin/quanlysanpham.aspx");
        }
        catch (Exception ex)
        {
            //lblThongbaoloi.Text = "không được!";
        }
    }
    protected void btdangxuat_Click(object sender, EventArgs e)
    {
        Session["Tendangnhap"] = null;
        Response.Redirect("/");
        btdangxuat.Visible = false;
    }
    
}