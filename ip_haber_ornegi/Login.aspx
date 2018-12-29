<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ip_haber_ornegi.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı"></asp:Label>
            <br />
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="Bu alan boş bırakılamaz."></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Parola"></asp:Label>
            <br />
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Bu alan boş bırakılamaz."></asp:RequiredFieldValidator>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Kayıt Ol!</asp:HyperLink>
            <br />
            <asp:Label ID="lblNotify" runat="server"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş " />
        </div>
    </form>
</body>
</html>
