<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ip_haber_ornegi.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Geri" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Yazar Adı"></asp:Label>
            <br />
            <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAuthor" ErrorMessage="Bu alan boş girilemez."></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Yazar Parola"></asp:Label>
            <br />
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Bu alan boş girilemez."></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Yazar Parola (Tekrar)"></asp:Label>
            <br />
            <asp:TextBox ID="txtPass2" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPass2" ErrorMessage="Bu alan boş girilemez."></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtPass2" ErrorMessage="Parolaların aynı girildiğinden emin olun."></asp:CompareValidator>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kayıt Ol" />

        </div>
    </form>
</body>
</html>
