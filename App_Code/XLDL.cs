using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for XLDL
/// </summary>
public class XLDL
{
    public string strConn = ConfigurationManager.ConnectionStrings["WebsiteNhaTroConnectionString"].ConnectionString.ToString();

    public DataTable GetData(string sqlQuery)
    {
        SqlConnection sqlcon = new SqlConnection(strConn);
        try
        {
            sqlcon.Open();
            SqlDataAdapter da = new SqlDataAdapter(sqlQuery, strConn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            throw ex;

        }
    }
    public void Execute(string lenhSQL)
    {
        using (SqlConnection sqlcon = new SqlConnection(strConn))
        {
            sqlcon.Open();
            SqlCommand sqlcmd = new SqlCommand(lenhSQL, sqlcon);
            sqlcmd.ExecuteNonQuery();
            sqlcon.Close();
        }
    }
    public string GetValue(string Query)
    {
        try
        {
            using (SqlConnection sqlCon = new SqlConnection(strConn))
            {
                sqlCon.Open();
                SqlCommand Cmd = new SqlCommand(Query, sqlCon);
                string result = Cmd.ExecuteScalar().ToString();
                sqlCon.Close();
                sqlCon.Dispose();
                return result;
            }
        }
        catch (Exception)
        {
            return null;
        }
    }
	public XLDL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}