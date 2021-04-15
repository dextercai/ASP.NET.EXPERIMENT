<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqXml.aspx.cs" Inherits="EX4_Xml_LinqXml" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="分类名："/><asp:TextBox ID="txtName" runat="server" /><br/>
            <asp:Button ID="btnQueryAll" runat="server" Text="显示全部" OnClick="btnQueryAll_Click" />&nbsp;<asp:Button ID="btnQuery" runat="server" Text="查询" OnClick="btnQuery_Click" />&nbsp;<asp:Button ID="btnInsert" runat="server" Text="插入" OnClick="btnInsert_Click" />
        <br/>
            <asp:Label ID="lblMsg" runat="server" Text=""/>
        </div>
    </form>
</body>
</html>
