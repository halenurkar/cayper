<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kimlik.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> ÇAYPER-ÇAYKUR PERSONEL BİLGİ İŞLEM SİSTEMİ </title>
    <style>
        body{background-color:darkred;}
        .table{top:10%; left:1%; position:absolute;}
        .a{width:180px; height:15px; font-size:25px; color:lightyellow; font-style:italic}
      .table2{top:10%; left:33%; position:absolute;}
       .table4{top:10%; left:65%; position:absolute;}
      .table3{top:1%; left:81%; position:absolute;}
      .table5{width:230px; height:15px; font-size:25px; color:lightyellow; font-style:italic}
    </style>

</head>
<body>
    <form id="form1" runat="server">
        </br>
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Çıkış" />
    <div>
        <table class="table3">
            <tr> 
               
                <td> <asp:ImageButton ID="ImgSave" runat="server" ImageUrl="~/Icon/save.png" Height="40" Width="40" OnClick="ImgSave_Click"/></td>
                 <td> <asp:ImageButton ID="ImgUpdate" runat="server" ImageUrl="~/Icon/update.png" Height="40" Width="40" OnClick="ImgUpdate_Click"/></td>
                 <td> <asp:ImageButton ID="ImgSearch" runat="server" ImageUrl="~/Icon/search.png" Height="40" Width="40" OnClick="ImgSearch_Click"/></td>
                 <td> <asp:ImageButton ID="ImgDelete" runat="server" ImageUrl="~/Icon/delete.png" Height="40" Width="40" OnClick="ImgDelete_Click" /></td>
            </tr>
        </table>
        <table class="table">
            
            <tr>
                <td class="a"> <asp:Label ID="LblTC_Kimlik" runat="server" Text="TC Kimlik No"></asp:Label> </td>
                <td > <asp:TextBox ID="TxtTC_Kimlik" runat="server" Height="19px" Width="100"></asp:TextBox> </td>
            </tr>

             <tr>
                <td  class="a"> <asp:Label ID="LblCüzdan_Seri_No" runat="server" Text="Cüzdan Seri No"></asp:Label> </td>
                <td> <asp:TextBox ID="TxtCüzdan_Seri_No" runat="server"  Height="19px" Width="100"></asp:TextBox> </td>
            </tr>

             <tr>
                <td  class="a"> <asp:Label ID="LblAd" runat="server" Text="Ad"></asp:Label> </td>
                <td> <asp:TextBox ID="TxtAd" runat="server"  Height="19px" Width="100"></asp:TextBox> </td>
            </tr>

             <tr>
                <td  class="a"> <asp:Label ID="LblSoyad" runat="server" Text="Soyad"></asp:Label> </td>
                <td> <asp:TextBox ID="TxtSoyad" runat="server"  Height="19px" Width="100"></asp:TextBox> </td>
            </tr>
          <tr>
                <td  class="a"> <asp:Label ID="LblCinsiyet" runat="server" Text="Cinsiyet"></asp:Label> </td>
                <td> <asp:DropDownList ID="DrpCinsiyet" runat="server"  Height="25px" Width="114px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td  class="a"> <asp:Label ID="LblDogum_Yeri" runat="server" Text="Doğum Yeri"></asp:Label> </td>
                 <td> <asp:TextBox ID="TxtDogum_Yeri" runat="server"  Height="19px" Width="100"></asp:TextBox> </td>
            </tr>
               </table>
        <table class="table2">
            <tr>
                <td  class="a"> <asp:Label ID="LblDogum_Tarihi" runat="server" Text="Doğum Tarihi"></asp:Label> </td>
                <td> <asp:TextBox ID="TxtDogum_Tarihi" runat="server"  Height="19px" Width="100"></asp:TextBox> </td>
            </tr>
            
            <tr>
                <td  class="a"> <asp:Label ID="LblMedeni_Hal" runat="server" Text="Medeni Hal"></asp:Label> </td>
                <td> <asp:DropDownList ID="DrpMedeni_Hal" runat="server"  Height="25px" Width="114px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td  class="a"> <asp:Label ID="LblAna_Adi" runat="server" Text="Anne Adı"></asp:Label> </td>
                <td> <asp:TextBox ID="TxtAna_Adi" runat="server"  Height="19px" Width="100"></asp:TextBox> </td>
            </tr>
             <tr>
                <td  class="a"> <asp:Label ID="LblBaba_Adi" runat="server" Text="Baba Adı"></asp:Label> </td>
                <td> <asp:TextBox ID="TxtBaba_Adi" runat="server"  Height="19px" Width="100"></asp:TextBox> </td>
              </tr>
      
               <tr>
                <td  class="a"> <asp:Label ID="LblIl" runat="server" Text="İl"></asp:Label> </td>
                <td> <asp:DropDownList ID="DrpIl" runat="server"  Height="25px" Width="114px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td  class="a"> <asp:Label ID="LblIlce" runat="server" Text="İlçe"></asp:Label> </td>
                <td> <asp:TextBox ID="TxtIlce" runat="server"  Height="19px" Width="100"></asp:TextBox> </td>
            </tr>
               </table>
        <table class="table4">
             <tr>
                <td  class="table5"> <asp:Label ID="LblK_Kullanici" runat="server" Text="Kaydeden Kullanıcı"></asp:Label> </td>
                <td> <asp:TextBox ID="TxtK_Kullanici" runat="server"  Height="19px" Width="100"></asp:TextBox> </td>
            </tr>

             <tr>
                <td  class="table5"> <asp:Label ID="LblS_Kullanici" runat="server" Text="Silen Kullnıcı"></asp:Label> </td>
                <td> <asp:TextBox ID="TxtS_Kullanici" runat="server"  Height="19px" Width="100"></asp:TextBox> </td>
            </tr>
             <tr>
                <td  class="table5"> <asp:Label ID="LblDT_Kayit" runat="server" Text="Kayıt Tarihi"></asp:Label> </td>
                <td> <asp:TextBox ID="TxtDT_Kayit" runat="server"  Height="19px" Width="100"></asp:TextBox> </td>
            </tr>
             <tr>
                <td  class="table5"> <asp:Label ID="LblDT_Gucelleme" runat="server" Text="Güncelleme Tarihi"></asp:Label> </td>
                <td> <asp:TextBox ID="TxtDt_Guncellleme" runat="server"  Height="19px" Width="100"></asp:TextBox> </td>
            </tr>
            <tr>
                <td  class="table5"> <asp:Label ID="LblAktif_Pasif" runat="server" Text="Aktif Pasif"></asp:Label> </td>
                <td> <asp:TextBox ID="TxtAktif_Pasif" runat="server"  Height="19px" Width="100"></asp:TextBox> </td>
            </tr>
        </table>
        </br>
          </br></br></br></br></br>  </br>  </br>  </br>  </br>  </br>  </br>  
         
         <%--<asp:Button ID="btnGiris" runat="server" Text="Bağlan" OnClick="btnGiris_Click" />--%>


        <asp:GridView ID="grgKimlikNufus" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
            <Columns>                     
                <asp:BoundField HeaderText="ID" DataField="ID"/>      
                <asp:BoundField HeaderText="TC Kimlik No" DataField="TC_Kimlik"/>
                 <asp:BoundField HeaderText="Cuzdan Seri No" DataField="Cuzdan_Seri_No"/>
                <asp:BoundField HeaderText="Adı" DataField="Ad"/>
                <asp:BoundField HeaderText="Soyadı" DataField="Soyad"/>
                <asp:BoundField HeaderText="Cinsiyet" DataField="Cop_Veri"/>
                 <asp:BoundField HeaderText="Dogum Yeri" DataField="Dogum_Yeri"/>
                 <asp:BoundField HeaderText="Doğum Tarihi" DataField="Dogum_Tarihi"/>
                 <asp:BoundField HeaderText="Medeni Hal" DataField="MedeniHal"/>
                 <asp:BoundField HeaderText="Ana Adı" DataField="Ana_Adi"/>
                 <asp:BoundField HeaderText="Baba Adı" DataField="Baba_Adi"/>
                 <asp:BoundField HeaderText="IL" DataField="IL"/> 
                 <asp:BoundField HeaderText="Ilce" DataField="RF_Ilce"/>
                 <asp:BoundField HeaderText="K Kullaıcı" DataField="K_Kullanici"/>
                 <asp:BoundField HeaderText="S Kullanıcı" DataField="S_Kullanici"/>
                 <asp:BoundField HeaderText="DT Kayıt" DataField="DT_Kayit"/>
                    <asp:BoundField HeaderText="DT Guncelleme" DataField="DT_Guncelleme"/>
                    <asp:BoundField HeaderText="Aktif Pasif" DataField="Aktif_Pasif"/>
                              
                <asp:HyperLinkField DataNavigateUrlFields="ID"
                            DataNavigateUrlFormatString="Kimlik.aspx?duzenle={0}" 
                            HeaderText="Düzenle" Text="Düzenle" />
              
            </Columns>
            
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
       
        
    </div>
      
       
    </form>
</body>
</html>
