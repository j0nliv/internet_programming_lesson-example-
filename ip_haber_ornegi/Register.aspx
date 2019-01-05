<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ip_haber_ornegi.Register" %>

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
            <asp:HyperLink ID="HyperLink1" class="btn btn-primary" runat="server" NavigateUrl="~/Login.aspx">Geri</asp:HyperLink><br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Yazar Adı"></asp:Label>
            <br />
            <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator role="alert"  ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAuthor" ErrorMessage="Bu alan boş girilemez."></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Yazar Parola"></asp:Label>
            <br />
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator  ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Bu alan boş girilemez."></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Yazar Parola (Tekrar)"></asp:Label>
            <br />
            <asp:TextBox ID="txtPass2" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPass2" ErrorMessage="Bu alan boş girilemez."></asp:RequiredFieldValidator>
            <br /><br />
            <asp:CompareValidator ID="CompareValidator1" CssClass="validator" runat="server" ControlToCompare="txtPass" ControlToValidate="txtPass2" ErrorMessage="Parolaların aynı girildiğinden emin olun."></asp:CompareValidator>
            <br /><br />
            <asp:Button ID="Button1" class="btn btn-success"  runat="server" OnClick="Button1_Click" Text="Kayıt Ol" />
            </div>
        </div>
    </form>
    <script src="style/js/bootstrap.min.js"></script>
    <script src="style/js/bootstrap.bundle.js"></script>
</body>
</html>
