<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataManager.aspx.cs" Inherits="EX4_DataManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" ID="txtCategoryId" Text="输入分类Id，只用于修改和删除" />
            <br/>
            <asp:Button runat="server" ID="btnQueryAll" Text="显示全部" OnClick="btnQueryAll_Click" />
            <asp:Button runat="server" ID="btnFuzzy" Text="模糊查找" OnClick="btnFuzzy_Click" />
            <asp:Button runat="server" ID="btnUpdate" Text="修改" OnClick="btnUpdate_Click" />
            <asp:Button runat="server" ID="btnInsert" Text="插入" OnClick="btnInsert_Click" />
            <asp:Button runat="server" ID="btnDelete" Text="删除" OnClick="btnDelete_Click" />
            <br/>
            <asp:GridView runat="server" ID="gvCategory" />


        </div>
    </form>
</body>
</html>
