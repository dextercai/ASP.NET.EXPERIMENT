<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SimplePage.aspx.cs" Inherits="Final_SimplePage" %>

<!DOCTYPE html>
<script runat="server">
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        lblMessage.Text = "不管你说什么，我都喜欢ASP.NET! 021118233 蔡闻哲";
    
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>熟悉单文件页模型</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtInput" runat="server" Height="33px" Width="192px">请输入内容</asp:TextBox> 
            <asp:Label ID="lblMessage" runat="server"></asp:Label><br/> 
            <asp:Button ID="btnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="确定" Height="36px" Width="102px"/>

        </div>
    </form>
</body>
</html>

