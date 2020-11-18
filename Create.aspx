<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="WebApplication1.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 95px;
        }
        .auto-style2 {
            margin-left: 97px;
        }
        .auto-style3 {
            margin-left: 80px;
        }
        .auto-style4 {
            margin-left: 93px;
        }
        .auto-style5 {
            margin-left: 67px;
        }
        .auto-style6 {
            margin-left: 14px;
        }
        .auto-style7 {
            margin-left: 1105px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Home" />
        <asp:Button ID="btnLogOut" runat="server" CssClass="auto-style7" OnClick="btnLogOut_Click" Text="Log out" />
        <br />
        <br />
        Create&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
        <br />
        Name:
        <asp:TextBox ID="txtbxName" runat="server" CssClass="auto-style4"></asp:TextBox>
        <br />
        <br />
        Surname:<asp:TextBox ID="txtbxSurname" runat="server" CssClass="auto-style3"></asp:TextBox>
        <br />
        <br />
        Email: <asp:TextBox ID="txtbxEmail" runat="server" CssClass="auto-style1"></asp:TextBox>
        <br />
        <br />
        Password: <asp:TextBox ID="txtbxPassword" runat="server" CssClass="auto-style5"></asp:TextBox>
        <br />
        <br />
        Confirm Password: <asp:TextBox ID="txtbxConfirm" runat="server" CssClass="auto-style6"></asp:TextBox>
        <br />
        <br />
        Type:
        <asp:TextBox ID="txtbxType" runat="server" CssClass="auto-style2"></asp:TextBox>
        <br />
        <br />
        <p>
            &nbsp;</p>
    <p>
        <asp:Button ID="btnAddUser" runat="server" OnClick="btnAddUser_Click" Text="Add User" />
        </p>
    </form>
    </body>
</html>
