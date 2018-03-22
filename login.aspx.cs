using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGiris_Click(object sender, EventArgs e)
    {
        SqlConnectionStringBuilder SCSB = new SqlConnectionStringBuilder();
        SCSB.DataSource = "HALENUR";
        SCSB.IntegratedSecurity = true;
        SCSB.InitialCatalog = "CAYPER";

        string sorgu = "select * from LoginBilgileri";
        SqlConnection cn = new SqlConnection(SCSB.ConnectionString);
        SqlDataAdapter da = new SqlDataAdapter(sorgu, cn);

        DataTable dt = new DataTable();
        da.Fill(dt);

        if (txtKullanici.Text== dt.Rows[0][1].ToString() & txtParola.Text ==dt.Rows[0][2].ToString())
        {
            Session.Add("Yetki", "1");
            Response.Redirect("Default.aspx");
        }

        else
        {
            LblNot.Text = "Kullanıcı Adı veya Parola Hatalı!!";
        }


    }


}