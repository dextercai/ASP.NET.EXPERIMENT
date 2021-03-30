<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChatLogin.aspx.cs" Inherits="EX3_Chat_ChatLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" ID="txtName"/>
            <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate="txtName" Text="*"/><br>
            <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" />
            <asp:RequiredFieldValidator runat="server" ID="rfvPassword" ControlToValidate="txtPassword" Text="*"/><br>
            <asp:Button runat="server" ID="btnLogin" Text="登录" OnClick="btnLogin_Click"/>
        </div>
    </form>
</body>
</html>
