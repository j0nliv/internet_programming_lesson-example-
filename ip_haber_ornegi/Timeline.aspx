<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Timeline.aspx.cs" Inherits="ip_haber_ornegi.Timeline" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Haber Kaynağı</title>
    <link href="style/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-light bg-light">
            <a class="navbar-brand" href="/Timeline.aspx">Haber Kaynağı</a>
            <asp:HyperLink class="btn btn-outline-success my-2 my-sm-0" ID="HyperLink1" runat="server" NavigateUrl="~/Admin.aspx">Yazar Paneli</asp:HyperLink>
        </nav>
        <div class="card-body">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><b style="font-size:x-large"><%#Eval("news_header") %></b><br /></td>
                    </tr>
                    <tr>
                        <img alt="" src="images/<%# Eval("news_image") %>" width="350" height="200" /><br />
                    </tr>
                    <tr>
                        <br /><p><%# Eval("news_content") %></p>
                    </tr>
                    <tr>
                        <br /><p><%# Eval("news_author") %> Tarafından yazıldı. </p>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
