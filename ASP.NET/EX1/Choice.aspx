<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Choice.aspx.cs" Inherits="EX1_Choice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:PlaceHolder ID="ChoicePlh" runat="server"/>
            <asp:Button ID="SubmitBtn" Text="提交" runat="server" OnClick="SubmitBtn_Click"/>
            <asp:Label ID="DisplayLb" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
