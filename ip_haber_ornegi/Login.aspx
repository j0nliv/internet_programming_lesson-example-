<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ip_haber_ornegi.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="style/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-light bg-light">
            <a class="navbar-brand" href="/Timeline.aspx">Haber Kaynağı</a>
            <asp:HyperLink class="btn btn-outline-success my-2 my-sm-0" ID="HyperLink2" runat="server" NavigateUrl="~/Admin.aspx">Yazar Paneli</asp:HyperLink>
        </nav>
        <div class="card">
            <div class="card-body">
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
            <asp:Button ID="Button1" runat="server" class="btn btn-primary" OnClick="Button1_Click" Text="Giriş " />
            <br />
            <asp:Label ID="lblNotify" runat="server"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-light" NavigateUrl="~/Register.aspx">Kayıt Ol!</asp:HyperLink>
            </div>
        </div>
    </form>
    <script src="style/js/bootstrap.min.js"></script>
    <script src="style/js/bootstrap.bundle.js"></script>
</body>
</html>
