<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yonetim.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ÇAYPER-ÇAYKUR PERSONEL BİLGİ İŞLEM SİSTEMİ</title>
    <style>
        body {background-color: lightyellow;}
        .tablo{ width:270px; top:38%; left:43%; position:absolute;}
        .tablo2{ width:500px; top:100%; left:35%; position:absolute;}
        .baslık{ top:0%; left:38%; position:absolute; color:darkred; font-size:70px;}
        .txt{top:25%; left:35%; position:absolute;}
       
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Icon/CaykurLogo.png"/>
    <div>
        <h1 class="baslık"> YÖNETİM </h1>
        <h2 class="txt"> Genel Müdür ve Yönetim Kurulu Başkanı</h2>

    <table class="tablo">
              <tr>
            <td>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Icon/Genelmudur.jpg"/>
                <h2>İmdat SÜTLÜOĞLU</h2>
                <p>
                    Doğum Yeri ve Yılı : Ardeşen 1953
                    Okul : İstanbul İktisadi ve Ticari İlimler Akademisi, KTÜ İşletme Dalında Master
                    Yabancı Dili : İngilizce ve Arapça
                    Medeni Durumu : Evli ve 4 Çocuk Babası
                </p>
            </td>
             </tr>    
    </table>
        <table class="tablo2">
             <tr>
            <td>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Icon/turgay_turna.jpg"/>
                <h2> Turgay TURNA(Genel Müdür Yardımcısı)</h2>
                <p>
                    1959 yılında Rize´nin Fındıklı ilçesinde doğdu.
                    1980 yılında Ege Üniversitesi Ziraat Fakültesin den mezun oldu ve ZİRAAT YÜKSEK MÜHENDİSİ unvanını aldı. 
                </p>
            </td>
                 <td></td> <td></td> <td></td>  <td></td> <td></td> <td></td>  <td></td> <td></td> <td></td>  <td></td> <td></td> <td></td>  <td></td> <td></td> <td></td>  <td></td> <td></td> <td></td>  <td></td> <td></td> <td></td>  <td></td> <td></td> <td></td>  
                
                <td>
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Icon/suleymanpinarbas.jpg"/>
                    <h2>Süleyman PİNARBAŞ(Genel Müdür Yardımcısı)</h2>
                    <p>
                        1960 yılında Rize´nin Pazar ilçesinde dünyaya geldi.
                        1985 yılında Karadeniz Teknik Üniversitesi İktisadi ve İdari Bilimler Fakültesi İktisat Bölümü´nü bitirdi.
                    </p>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
