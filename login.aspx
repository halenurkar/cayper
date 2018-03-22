<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> ÇAYPER-ÇAYKUR PERSONEL BİLGİ İŞLEM SİSTEMİ </title>
  <style type="text/css">
        body {
            background-color:darkred;
        }
        .tumu{border-style: none; border-color:black;border-width:2px;padding:10px;background-color:lightyellow; }
        .text{color:white;}
        .table{width:430px;height:100px; top:40%;left:37%; position:absolute;}
        .sat{ width:60px;height:20px;}
        .kolon {width:280px;height:20px;}
        .button{right:30px;}
        .tablo{width:500px; height:250px;  top:15%;left:40%; position:absolute;}
        .txt{width:530px;height:100px; top:17%;left:32%; position:absolute; font:bold 30px Times New Roman; color:lightyellow;}
    </style>
</head>
<body >
   
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Icon/CaykurLogo.png"/>

    <table class="txt">
        <tr>
            <td>ÇAYKUR PERSONEL BİLGİ İŞLEM SİSTEMİNE HOŞGELDİNİZ</td>
        </tr>
    </table>
        
    <form id="form1" runat="server" >
     <table class="table" >
        <tr >
            <td  >
            <asp:Label ID="Label1" runat="server" Text="KULLANICI ADI:" CssClass="tumu" Width="140px"  ></asp:Label></td>
            <td class="kolon">
                <asp:TextBox ID="txtKullanici" runat="server" CssClass="tumu"></asp:TextBox></td>
        </tr>
        <tr>
            <td >
            <asp:Label ID="Label2" runat="server" Text="ŞİFRE:" CssClass="tumu" Font-Bold="True" Font-Size="Smaller" ></asp:Label></td>
            <td >
                <asp:TextBox ID="txtParola" runat="server" CssClass="tumu" TextMode="Password" ></asp:TextBox></td>            
       </tr>
         <tr>
            <td ><asp:Label ID="LblNot" runat="server" Text=""></asp:Label></td>

                <td ><asp:Button ID="btnGiris" runat="server" Text="GİRİŞ YAP" OnClick="btnGiris_Click" CssClass="button"/></td>
                </tr>
         <
    </table>
   <%-- <div style="width:900px; height:200px"> </div>
        
        <div style="width:900px; height:200px;"> </div>--%>
    </form> 
</body>
</html>
