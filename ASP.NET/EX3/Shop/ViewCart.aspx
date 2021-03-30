<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewCart.aspx.cs" Inherits="EX3_Shop_ViewCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID="lblMsg" Text="" /><br/>
            <asp:CheckBoxList runat="server" ID="chkIsPet" /><br/>
            <asp:Button runat="server" ID="btnClear" Text="清空购物车" OnClick="btnClear_Click"/>
            <asp:Button runat="server" ID="btnContinue" Text="继续购物" OnClick="btnContinue_Click"/>

        </div>
    </form>
</body>
</html>
