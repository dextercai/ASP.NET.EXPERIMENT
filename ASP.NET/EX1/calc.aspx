<%@ Page Language="C#" AutoEventWireup="true" CodeFile="calc.aspx.cs" Inherits="Calc_EX1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;">
            <h4>简易计算器</h4>
            <asp:TextBox ID="ResultTextBox" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Button_1" runat="server" Text="1" OnClick="Button_1_Click" />
            <asp:Button ID="Button_2" runat="server" Text="2" OnClick="Button_2_Click" />
            <asp:Button ID="Button_3" runat="server" Text="3" OnClick="Button_3_Click" />
        <br/>
            <asp:Button ID="ButtonPlus" runat="server" Text="+" OnClick="ButtonPlus_Click" />
            <asp:Button ID="ButtonMiuns" runat="server" Text="-" OnClick="ButtonMiuns_Click"  />
            <asp:Button ID="ButtonEqual" runat="server" Text="=" OnClick="ButtonEqual_Click" />
        </p>
        </div>
    </form>
</body>
</html>
