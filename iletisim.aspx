<%@ Page Language="C#" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> ÇAYPER-ÇAYKUR PERSONEL BİLGİ İŞLEM SİSTEMİ</title>
    <style>
        body{background-color:darkred;}
        .table{ width:370px; height:350px; top:28%; left:37%; position:absolute; border-style:outset; background-color:lightyellow; border-radius:30px;}
        .text{color:lightyellow; font-size:50px; top:7%; left:41%; position:absolute;}
        
    </style>
</head>
<body>
     <asp:Image ID="Image1" runat="server" ImageUrl="~/Icon/CaykurLogo.png"/>

    <form id="form1" runat="server">
    <div>
        <h1 class="text"> İLETİŞİM </h1>

        <table class="table">
            <tr>
                <td> <asp:Label ID="Label1" runat="server" Text="E-mail Adresi	caykur@caykur.gov.tr "></asp:Label> </td>
            </tr>
             <tr>
                <td> <asp:Label ID="Label2" runat="server" Text="Telefon	0464 213 02 11 (20 Hat)  "></asp:Label> </td>
            </tr>
             <tr>
                <td> <asp:Label ID="Label3" runat="server" Text="Fax	0464 213 02 51  "></asp:Label> </td>
            </tr>
             <tr>
                <td> <asp:Label ID="Label4" runat="server" Text="Adres	Müftü Mah. Menderes Bulvarı 53080 - RİZE "></asp:Label> </td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
