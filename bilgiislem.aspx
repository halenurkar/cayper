<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bilgiislem.aspx.cs" Inherits="bilgiislem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title> ÇAYPER-ÇAYKUR PERSONEL BİLGİ İŞLEM SİSTEMİ </title>
    <style>
      .table{top:3%; left:18%; position:absolute;}
      </style>
</head>
<body>
    
    <form id="form1" runat="server">
          <asp:Image ID="Image2" runat="server" ImageUrl="~/Icon/CaykurLogo.png"/>
    <div>
        <table class="table">
            <tr>
                <td><asp:Image ID="Image1" runat="server"  ImageUrl ="~/Icon/BILGIISLEM.jpg" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
