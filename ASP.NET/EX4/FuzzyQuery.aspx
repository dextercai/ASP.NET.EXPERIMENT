<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FuzzyQuery.aspx.cs" Inherits="EX4_FuzzyQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" ID="txtSearch" />
            <asp:Button runat="server" ID="btnSearch" Text="搜索" />
            <asp:Button runat="server" ID="btnReturn" Text="返回" />
            <asp:GridView runat="server" ID="gvCategory" />
            <asp:Label runat="server" ID="lblMsg" />
        </div>
    </form>
</body>
</html>
