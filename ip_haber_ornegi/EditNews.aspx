<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditNews.aspx.cs" Inherits="ip_haber_ornegi.EditNews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="style/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
                <asp:HyperLink ID="HyperLink1" class="btn btn-danger btn-sm" runat="server" NavigateUrl="~/Admin.aspx">Geri Dön</asp:HyperLink>
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
&nbsp;
            <br />
            <asp:Button class="btn btn-success btn-sm" ID="Button1" runat="server" Text="Güncelle" OnClick="Button1_Click" />
            <br />
&nbsp;<asp:Label ID="lblInfo" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
