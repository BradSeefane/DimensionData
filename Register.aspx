<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 106px;
        }
        .auto-style2 {
            margin-left: 89px;
        }
        .auto-style3 {
            margin-left: 64px;
        }
        .auto-style4 {
            margin-left: 82px;
        }
        .auto-style5 {
            margin-left: 33px;
        }
        .auto-style6 {
            margin-left: 225px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Register<br />
            <br />
            Name:
            <asp:TextBox ID="txtbxName" runat="server" CssClass="auto-style1"></asp:TextBox>
            <br />
            Surname:
            <asp:TextBox ID="txtbxSurname" runat="server" CssClass="auto-style2"></asp:TextBox>
            <br />
            Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtbxEmail" runat="server" CssClass="auto-style3"></asp:TextBox>
            <br />
            Password:
            <asp:TextBox ID="txtbxPassword" runat="server" CssClass="auto-style4"></asp:TextBox>
            <br />
            Confirm Password:
            <asp:TextBox ID="txtbxConfirmPassword" runat="server" CssClass="auto-style5"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Already have an account? Login</asp:HyperLink>
        </div>
        <p>
            <asp:Button ID="btnRegister" runat="server" CssClass="auto-style6" OnClick="btnRegister_Click" Text="Register" />
            <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Home" />
        </p>
    </form>
</body>
</html>
