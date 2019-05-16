using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for clDangKyTT
/// </summary>
public class clDangKyTT
{
    SqlConnection chiakhoa = new SqlConnection("Data Source=.;Initial Catalog=WebsiteNhaTro;Integrated Security=True");

    public bool Kiemtradangnhap(string tendangnhap)
    {
        string Ktdangnhap = "select Tendangnhap from [DangKi] where Tendangnhap='" + tendangnhap + "'";
        chiakhoa.Open();
        SqlCommand commanddangnhap = new SqlCommand(Ktdangnhap, chiakhoa);
        SqlDataReader rederdangnhap = commanddangnhap.ExecuteReader();
        if (rederdangnhap.HasRows)
        {
            chiakhoa.Close();
            return true;
        }
        else
        {
            chiakhoa.Close();
            return false;
        }
    }
    public bool Kiemtramatkhau(string matkhau)
    {
        string ktmk = "select Matkhau from [DangKi] where Matkhau='" + matkhau + "'";
        chiakhoa.Open();
        SqlCommand commandmk = new SqlCommand(ktmk, chiakhoa);
        SqlDataReader readermatkhau = commandmk.ExecuteReader();
        if (readermatkhau.HasRows == false)
        {
            chiakhoa.Close();
            return false;
        }
        else
        {
            chiakhoa.Close();
            return true;
        }
    }
    public bool kiemtraemail(string email)
    {
        string ktemail = "select Tendangnhap from [DangKi] where Email='" + email + "'";
        chiakhoa.Open();
        SqlCommand ktem = new SqlCommand(ktemail, chiakhoa);
        SqlDataReader readeremail = ktem.ExecuteReader();
        if (readeremail.HasRows == false)
        {
            chiakhoa.Close();
            return false;
        }
        else
        {
            chiakhoa.Close();
            return true;
        }
    }
    public void Dlkhachhang(string ten, string e, string mk, string d, string sdt)
    {
        string them = "insert into [DangKi] (Tendangnhap,Email,Matkhau,Diachi,Sodienthoai)values('" + ten + "','" + e + "','" + mk + "','" + d + "','" + sdt+ "')";
        chiakhoa.Open();
        SqlCommand insert = new SqlCommand(them, chiakhoa);
        insert.ExecuteNonQuery();
        chiakhoa.Close();

    }
	public clDangKyTT()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}