<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modify.aspx.cs" Inherits="WebApplication1.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 520px;
        }
        .auto-style2 {
            margin-left: 203px;
        }
        .auto-style3 {
            margin-left: 188px;
        }
        .auto-style4 {
            margin-left: 210px;
        }
        .auto-style5 {
            margin-left: 141px;
        }
        .auto-style6 {
            margin-left: 204px;
            margin-top: 6px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" BackColor="White" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Text="Modify"></asp:Label>
        </div>
        <p>
            Enter the employees email<asp:TextBox ID="txtbxEmpID" runat="server" CssClass="auto-style5"></asp:TextBox>
        </p>
        <p>
            Updated
            Name<asp:TextBox ID="txtbxName" runat="server" CssClass="auto-style2"></asp:TextBox>
        </p>
        <p>
            Updated
            Surname<asp:TextBox ID="txtbxSurname" runat="server" CssClass="auto-style3"></asp:TextBox>
        </p>
        <p>
            Updated
            Email<asp:TextBox ID="txtbxEmail" runat="server" CssClass="auto-style4"></asp:TextBox>
        </p>
        <p>
            Employee Type<asp:ListBox ID="ListBox1" runat="server" CssClass="auto-style6" Height="24px" Width="128px">
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>M</asp:ListItem>
            </asp:ListBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
        <asp:Button ID="btnModify" runat="server" OnClick="btnModify_Click" Text="Modify" />
        </p>
    </form>
</body>
</html>
