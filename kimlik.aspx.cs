using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Text.RegularExpressions;

public partial class _Default : System.Web.UI.Page
{
    int duzenle;
    string veri;
    SqlConnection cn = new SqlConnection("Data Source=HALENUR; Initial Catalog=CAYPER; integrated Security=sspi;");
    DataTable dt5;
    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (Session["Yetki"] != "1")
        {
            Response.Redirect("login.aspx");
        }*/

         
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["Duzenle"] != null)
            {
                veri = Request.QueryString["Duzenle"].ToString();
            }


            SqlDataAdapter da = new SqlDataAdapter("select * from cop where Cop_ID between 1 and 2", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);

            ListItem list3 = new ListItem("SEÇİNİZ", "0");

            DrpCinsiyet.DataSource = dt;
            DrpCinsiyet.DataValueField = "Cop_ID";
            DrpCinsiyet.DataTextField = "Cop_Veri";
            DrpCinsiyet.DataBind();
            DrpCinsiyet.Items.Insert(DrpCinsiyet.Items.Count - 2, list3);

            SqlDataAdapter da2 = new SqlDataAdapter("select * from Iller", cn);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);

            ListItem list2 = new ListItem("SEÇİNİZ", "0");

            DrpIl.DataSource = dt2;
            DrpIl.DataValueField = "IlID";
            DrpIl.DataTextField = "Il";
            DrpIl.DataBind();
            DrpIl.Items.Insert(DrpIl.Items.Count - 81, list2);
      
            SqlDataAdapter da3 = new SqlDataAdapter("select * from cop where Cop_ID between 3 and 5", cn);
            DataTable dt3 = new DataTable();
            
            da3.Fill(dt3);

            ListItem list = new ListItem("SEÇİNİZ","0");
            
            DrpMedeni_Hal.DataSource = dt3;
            DrpMedeni_Hal.DataValueField = "Cop_ID";
            DrpMedeni_Hal.DataTextField = "Cop_Veri";
            DrpMedeni_Hal.DataBind();
            DrpMedeni_Hal.Items.Insert(DrpMedeni_Hal.Items.Count-3,list);


        }

        SqlDataAdapter da4 = new SqlDataAdapter("select K.ID, K.TC_Kimlik, K.Cuzdan_Seri_No, K.Ad, K.Soyad, C.Cop_Veri, K.Dogum_Yeri, K.Dogum_Tarihi, C2.Cop_Veri as MedeniHal, K.Ana_Adi, K.Baba_Adi, K.RF_il, K.RF_ilce, K.K_Kullanici, K.S_Kullanici, K.Dt_Kayit, K.Dt_Guncelleme, K.Aktif_Pasif, i.Il, K.RF_il, C.Cop_Veri, C.Cop_ID from KimlikNufus K join Iller i on K.RF_il = i.IlID join Cop C on K.RF_Cinsiyet = C.Cop_ID join Cop C2 on K.RF_MedeniHal = C2.Cop_ID where K.Aktif_Pasif = '1' order by ID", cn);
        DataTable dt4 = new DataTable();
        da4.Fill(dt4);


       

            if (veri != null)
            {
               duzenle = Convert.ToInt32(Request.QueryString["Duzenle"]);
        
                SqlDataAdapter da5 = new SqlDataAdapter("select K.ID, K.TC_Kimlik, K.Cuzdan_Seri_No, K.Ad, K.Soyad, C.Cop_ID, K.Dogum_Yeri, K.Dogum_Tarihi, C2.Cop_ID as MedeniHal, K.Ana_Adi, K.Baba_Adi, K.RF_il, K.RF_ilce, K.K_Kullanici, K.S_Kullanici, K.Dt_Kayit, K.Dt_Guncelleme, K.Aktif_Pasif, i.Il, K.RF_il, C.Cop_Veri, C.Cop_ID from KimlikNufus K join Iller i on K.RF_il = i.IlID join Cop C on K.RF_Cinsiyet = C.Cop_ID join Cop C2 on K.RF_MedeniHal = C2.Cop_ID + 2 where K.Aktif_Pasif = '1' and K.ID='" + duzenle + "'", cn);
                dt5 = new DataTable();
                da5.Fill(dt5);

                TxtTC_Kimlik.Text = dt5.Rows[0][1].ToString();
                TxtCüzdan_Seri_No.Text = dt5.Rows[0][2].ToString();
                TxtAd.Text = dt5.Rows[0][3].ToString();
                TxtSoyad.Text = dt5.Rows[0][4].ToString();
                DrpCinsiyet.SelectedIndex = Convert.ToInt32(dt5.Rows[0][5].ToString());
                TxtDogum_Yeri.Text = dt5.Rows[0][6].ToString();
                TxtDogum_Tarihi.Text = dt5.Rows[0][7].ToString();
                DrpMedeni_Hal.SelectedIndex = Convert.ToInt32( dt5.Rows[0][8].ToString());
                TxtAna_Adi.Text = dt5.Rows[0][9].ToString();
                TxtBaba_Adi.Text = dt5.Rows[0][10].ToString();
                DrpIl.SelectedIndex = Convert.ToInt32(dt5.Rows[0][11]);
                TxtIlce.Text = dt5.Rows[0][12].ToString();
                TxtK_Kullanici.Text = dt5.Rows[0][13].ToString();
                TxtS_Kullanici.Text = dt5.Rows[0][14].ToString();
                TxtDT_Kayit.Text = dt5.Rows[0][15].ToString();
                TxtDt_Guncellleme.Text = dt5.Rows[0][16].ToString();
                TxtAktif_Pasif.Text = dt5.Rows[0][17].ToString();
               

            }

            if (Request.QueryString["Duzenle"] != null)
            {
                grgKimlikNufus.DataSource = dt5;
                grgKimlikNufus.DataBind();
            }

            else
            {
                grgKimlikNufus.DataSource = dt4;
                grgKimlikNufus.DataBind();
            }

      
    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("login.aspx");
    }

    protected void ImgSave_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            string baglanti = "Data Source= HALENUR; Initial Catalog=CAYPER; integrated Security=sspi;";
            SqlConnection cn = new SqlConnection(baglanti);
          
            SqlDataAdapter da = new SqlDataAdapter("INSERT INTO KimlikNufus(TC_Kimlik, Cuzdan_Seri_No, Ad, Soyad, RF_Cinsiyet, Dogum_Yeri, Dogum_Tarihi, RF_MedeniHal, Ana_Adi, Baba_Adi, RF_il, RF_ilce, K_Kullanici, S_Kullanici, Dt_Kayit, Dt_Guncelleme, Aktif_Pasif) values('" + TxtTC_Kimlik.Text + "','" + TxtCüzdan_Seri_No.Text + "','" + TxtAd.Text + "','" + TxtSoyad.Text + "','" + DrpCinsiyet.SelectedValue + "','" + TxtDogum_Yeri.Text + "','" + TxtDogum_Tarihi.Text + "','" + DrpMedeni_Hal.SelectedValue + "' ,'" + TxtAna_Adi.Text + "','" + TxtBaba_Adi.Text + "','" + DrpIl.SelectedValue + "','" + TxtIlce.Text + "','" + TxtK_Kullanici.Text + "','" + TxtS_Kullanici.Text + "','" + TxtDT_Kayit.Text + "','" + TxtDt_Guncellleme.Text + "','1')", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);


            SqlDataAdapter da2 = new SqlDataAdapter("select K.ID, K.TC_Kimlik, K.Cuzdan_Seri_No, K.Ad, K.Soyad, C.Cop_Veri, K.Dogum_Yeri, K.Dogum_Tarihi, C2.Cop_Veri, K.Ana_Adi, K.Baba_Adi, K.RF_il, K.RF_ilce, K.K_Kullanici, K.S_Kullanici, K.Dt_Kayit, K.Dt_Guncelleme, K.Aktif_Pasif, i.Il, K.RF_il, C.Cop_Veri, C.Cop_ID from KimlikNufus K join Iller i on K.RF_il = i.IlID join Cop C on K.RF_Cinsiyet = C.Cop_ID join Cop C2 on K.RF_MedeniHal = C2.Cop_ID  where K.Aktif_Pasif = '1' order by ID", cn);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            grgKimlikNufus.DataSource = dt2;
            grgKimlikNufus.DataBind();
        }

        catch (Exception ex)
        {
            TxtAktif_Pasif.Text = ex.Message;            
        }
    }

       protected void ImgUpdate_Click(object sender, ImageClickEventArgs e)
    {
        if (Request.QueryString["Duzenle"] != null)
        {
            duzenle = Convert.ToInt32(Request.QueryString["Duzenle"]);
        }

        SqlDataAdapter da = new SqlDataAdapter("update KimlikNufus set TC_Kimlik='" + TxtTC_Kimlik.Text + "',Cuzdan_Seri_No='" + TxtCüzdan_Seri_No.Text + "',Ad='" + TxtAd.Text + "',Soyad='" + TxtSoyad.Text + "',RF_Cinsiyet='" + DrpCinsiyet.SelectedValue + "',Dogum_Yeri='" + TxtDogum_Yeri.Text + "',Dogum_Tarihi='" + TxtDogum_Tarihi.Text + "',RF_MedeniHal='" + DrpMedeni_Hal.SelectedValue + "' ,Ana_Adi='" + TxtAna_Adi.Text + "',Baba_Adi='" + TxtBaba_Adi.Text + "',RF_il='" + DrpIl.SelectedValue + "',RF_ilce='" + TxtIlce.Text + "',K_Kullanici='" + TxtK_Kullanici.Text + "',S_Kullanici='" + TxtS_Kullanici.Text + "',Dt_Kayit='" + TxtDT_Kayit.Text + "',Dt_Guncelleme='" + TxtDt_Guncellleme.Text + "'where ID='" + duzenle + "'", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);


        SqlDataAdapter da2 = new SqlDataAdapter("select K.ID, K.TC_Kimlik, K.Cuzdan_Seri_No, K.Ad, K.Soyad, C.Cop_Veri, K.Dogum_Yeri, K.Dogum_Tarihi, C2.Cop_Veri as MedeniHal, K.Ana_Adi, K.Baba_Adi, K.RF_il, K.RF_ilce, K.K_Kullanici, K.S_Kullanici, K.Dt_Kayit, K.Dt_Guncelleme, K.Aktif_Pasif, i.Il, K.RF_il, C.Cop_Veri, C.Cop_ID from KimlikNufus K join Iller i on K.RF_il = i.IlID join Cop C on K.RF_Cinsiyet = C.Cop_ID join Cop C2 on K.RF_MedeniHal = C2.Cop_ID where  K.Aktif_Pasif = '1' order by ID", cn);
        DataTable dt2 = new DataTable();
        da2.Fill(dt2);
        grgKimlikNufus.DataSource = dt2;
        grgKimlikNufus.DataBind();

    }

    protected void ImgSearch_Click(object sender, ImageClickEventArgs e)
    {
        string sorgu = "select K.ID, K.TC_Kimlik, K.Cuzdan_Seri_No, K.Ad, K.Soyad, C.Cop_Veri, K.Dogum_Yeri, K.Dogum_Tarihi, C2.Cop_Veri as MedeniHal, K.Ana_Adi, K.Baba_Adi, K.RF_il, K.RF_ilce, K.K_Kullanici, K.S_Kullanici, K.Dt_Kayit, K.Dt_Guncelleme, K.Aktif_Pasif, i.Il, K.RF_il, C.Cop_Veri, C.Cop_ID from KimlikNufus K join Iller i on K.RF_il = i.IlID join Cop C on K.RF_Cinsiyet = C.Cop_ID join Cop C2 on K.RF_MedeniHal = C2.Cop_ID where  ";
        if (TxtAd.Text != "")
        {
            sorgu += "  K.Ad='" + TxtAd.Text + "' and ";
        }        
        if (DrpMedeni_Hal.SelectedItem.Value!="0")
        {
            sorgu += "  K.RF_MedeniHal = '" + DrpMedeni_Hal.SelectedItem.Value + "' and ";
        }
        if(TxtTC_Kimlik.Text !="")
        {
            sorgu += " K.TC_Kimlik= '" + TxtTC_Kimlik.Text + "' and ";
        }
        if(TxtCüzdan_Seri_No.Text !="")
        {
            sorgu += " K.Cuzdan_Seri_No='" + TxtCüzdan_Seri_No.Text + "' and ";
        }
        if(TxtSoyad.Text !="")
        {
            sorgu += " K.Soyad='" + TxtSoyad.Text + "' and ";
        }
        if(DrpCinsiyet.SelectedItem.Value!="0")
        {
            sorgu += " K.RF_Cinsiyet='" + DrpCinsiyet.SelectedItem.Value + "' and ";
        }
        if(TxtDogum_Yeri.Text !="")
        {
            sorgu += " K.Dogum_Yeri='" + TxtDogum_Yeri.Text + "' and ";
        }
        if(TxtDogum_Tarihi.Text!="")
        {
            sorgu += " K.Dogum_Tarihi='" + TxtDogum_Tarihi + "' and ";
        }
        if(TxtAna_Adi.Text!="")
        {
            sorgu += "K.Ana_Adi='" + TxtAna_Adi.Text + "' and ";
        }
        if(TxtBaba_Adi.Text!="")
        {
            sorgu += " K.Baba_Adi='" + TxtBaba_Adi.Text + "' and ";
        }
        if(DrpIl.SelectedItem.Value !="0")
        {
            sorgu += "K.RF_il='" + DrpIl.SelectedItem.Value + "' and ";
        }
        if(TxtIlce.Text!="")
        {
            sorgu += " K.Ilce='" + TxtIlce.Text + "' and ";
        }
        if(TxtK_Kullanici.Text!="")
        {
            sorgu += " K.K_Kullanici='" + TxtK_Kullanici.Text + "' and ";
        }
        if(TxtS_Kullanici.Text!="")
        {
            sorgu += " K.S_Kullanici='" + TxtS_Kullanici.Text + "' and ";
        }
        if(TxtDT_Kayit.Text!="")
        {
            sorgu += " K.DT_Kayit='" + TxtDT_Kayit + "' and ";
        }
        if(TxtDt_Guncellleme.Text !="")
        {
            sorgu += " K.Dt_Guncelleme='" + TxtDt_Guncellleme + "' and ";
        }

        sorgu +="  K.Aktif_Pasif = '1' order by ID";
     
       SqlDataAdapter da4 = new SqlDataAdapter(sorgu, cn);
        DataTable dt4 = new DataTable();
        da4.Fill(dt4);

        grgKimlikNufus.DataSource = dt4;
        grgKimlikNufus.DataBind();
    }

    protected void ImgDelete_Click(object sender, ImageClickEventArgs e)
    {
        if (Request.QueryString["Duzenle"] != null)
        {
            duzenle = Convert.ToInt32(Request.QueryString["Duzenle"]);
        }
        string baglanti = "Data Source= HALENUR; Initial Catalog=CAYPER; integrated Security=sspi;";
        SqlConnection cn = new SqlConnection(baglanti);

        SqlDataAdapter da = new SqlDataAdapter("update KimlikNufus set Aktif_Pasif = 0 where ID ='" + duzenle + "' ", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);

        SqlDataAdapter da3= new SqlDataAdapter("select K.ID, K.TC_Kimlik, K.Cuzdan_Seri_No, K.Ad, K.Soyad, C.Cop_Veri, K.Dogum_Yeri, K.Dogum_Tarihi, C2.Cop_Veri as MedeniHal, K.Ana_Adi, K.Baba_Adi, K.RF_il, K.RF_ilce, K.K_Kullanici, K.S_Kullanici, K.Dt_Kayit, K.Dt_Guncelleme, K.Aktif_Pasif, i.Il, K.RF_il, C.Cop_Veri, C.Cop_ID from KimlikNufus K join Iller i on K.RF_il = i.IlID join Cop C on K.RF_Cinsiyet = C.Cop_ID join Cop C2 on K.RF_MedeniHal = C2.Cop_ID where  K.Aktif_Pasif = '1' order by ID", cn);

        DataTable dt3 = new DataTable();
        da3.Fill(dt3);

        grgKimlikNufus.DataSource = dt3;
        grgKimlikNufus.DataBind();

    }
}


