<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 18px;
        }
        .auto-style2 {
            margin-left: 42px;
        }
        .auto-style3 {
            margin-left: 181px;
            margin-top: 19px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        Login<br />
        <br />
        Email:
        <asp:TextBox ID="txtbxEmail" runat="server" CssClass="auto-style2" Width="150px"></asp:TextBox>
        <p>
            Password:<asp:TextBox ID="txtbxPassword" runat="server" CssClass="auto-style1" Width="154px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnLogin" runat="server" CssClass="auto-style3" Height="31px" OnClick="btnLogin_Click" Text="Login" />
            <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Home" />
        </p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Don&#39;t have an account? Register</asp:HyperLink>
    </form>
</body>
</html>
