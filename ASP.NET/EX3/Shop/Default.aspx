<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="EX3_Shop_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <asp:CheckBoxList runat="server" ID="chklsPet" >
            <asp:ListItem>绵羊</asp:ListItem>
            <asp:ListItem>斑马</asp:ListItem>
            <asp:ListItem>鳄鱼</asp:ListItem>
            <asp:ListItem>波斯猫</asp:ListItem>
            <asp:ListItem>鲨鱼</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Button runat="server" ID="btnBuy" Text="放入购物车" OnClick="btnBuy_Click"/>
        <asp:Button runat="server" ID="butView" Text="查看购物车" OnClick="butView_Click"/>
    </div>
</form>
</body>
</html>