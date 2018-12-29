<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ip_haber_ornegi.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="lblAuthor" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Haber Başlığı"></asp:Label>
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
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 29px" Text="Kaydet" />
&nbsp;<asp:Label ID="lblInfo" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Eklenenler"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="news_id" DataSourceID="SqlDataSource1" Width="636px">
                <Columns>
                    <asp:BoundField DataField="news_header" HeaderText="Başlık" SortExpression="news_header" />
                    <asp:BoundField DataField="news_content" HeaderText="İçerik" SortExpression="news_content" />
                    <asp:BoundField DataField="news_author" HeaderText="Yazar" SortExpression="news_author" />
                    <asp:BoundField DataField="news_image" HeaderText="Resim Adı" SortExpression="news_image" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [news]"></asp:SqlDataSource>
            <br />
            <br />
            <br />

        </div>
    </form>
</body>
</html>
