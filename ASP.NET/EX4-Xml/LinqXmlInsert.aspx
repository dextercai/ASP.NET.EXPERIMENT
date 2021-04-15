<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqXmlInsert.aspx.cs" Inherits="EX4_Xml_LinqXmlInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="分类Id：" />
            <asp:TextBox runat="server" ID="txtCategoryId"/><br/>
            <asp:Label runat="server" Text="分类名：" />
            <asp:TextBox runat="server" ID="txtName"/><br/>
            <asp:Label runat="server" Text="描述：" />
            <asp:TextBox runat="server" ID="txtDescn"/><br/>
            <asp:Button runat="server" ID="btnInsert" Text="插入" OnClick="btnInsert_Click" /><asp:Button runat="server" ID="btnReturn" Text="返回" OnClick="btnReturn_Click" />

        </div>
    </form>
</body>
</html>
