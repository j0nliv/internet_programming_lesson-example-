<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ip_haber_ornegi.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="style/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <div class="card-body">
            <asp:Label ID="lblAuthor" class="alert alert-success" runat="server" Text="Label"></asp:Label>
                <br /><br />
                <asp:HyperLink ID="HyperLink2" class="btn btn-success btn-sm" runat="server" NavigateUrl="~/Timeline.aspx">Haber Kaynağı</asp:HyperLink>
                <br /><br />
                <asp:HyperLink ID="HyperLink1" class="btn btn-danger btn-sm" runat="server" NavigateUrl="~/Login.aspx">Çıkış Yap</asp:HyperLink>
            <br /><br />
            <asp:Label ID="Label2" runat="server"  Text="Haber Başlığı"></asp:Label>
            <br />
            <asp:TextBox ID="txtHeader" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHeader" ErrorMessage="Bu alan boş bırakılamaz."></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Haber İçeriği"></asp:Label>
            <br />
            <asp:TextBox ID="txtContent" runat="server" Height="241px" TextMode="MultiLine" Width="422px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContent" ErrorMessage="Bu alan boş bırakılamaz."></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Yazar"></asp:Label>
&nbsp;
            <br />
            <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAuthor" ErrorMessage="Bu alan boş bırakılamaz."></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Resim Yükle"></asp:Label>
            <br />
            <asp:FileUpload ID="fileImage" runat="server" />
            <br /><br />
            <asp:Button ID="Button1" class="btn btn-success btn-sm" runat="server" OnClick="Button1_Click" style="height: 29px" Text="Kaydet" />
&nbsp;<asp:Label ID="lblInfo" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="YAZDIKLARIN"></asp:Label>
            <br />
                <asp:Repeater ID="Repeater1" runat="server">     
                    <ItemTemplate> 
                        <table>
                        <tr>
                            <td>Başlık:</td>
                            <td><%# Eval("news_header") %></td>
                        </tr>
                        <tr>
                            <td>İçerik:</td>
                            <td><%# Eval("news_content") %></td>
                        </tr>
                        <tr>
                           <td>Resim:</td>
                           <td><img alt="" src="images/<%# Eval("news_image") %>" width="150" height="100" /></td>
                        </tr>
                        <tr>
                            <td>
                                <a href="EditNews.aspx?sil=<%#Eval("news_id") %>">Sil</a> 
                                <a href="EditNews.aspx?id=<%#Eval("news_id") %>">Güncelle</a>
                            <td>
                        </tr>
                        </table>
                    </ItemTemplate>
                </asp:Repeater>
            <br />
            <br />
            <br />
            </div>
        </div>
    </form>
</body>
</html>
