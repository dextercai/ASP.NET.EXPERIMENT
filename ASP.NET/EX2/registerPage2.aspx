<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registerPage2.aspx.cs" Inherits="EX2P2_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            用户名：<asp:TextBox runat="server" ID="txtName" />
            <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate="txtName" Display="Dynamic" SetFocusOnError="True" ErrorMessage="请输入用户名" Text="*" ValidationGroup="groupName"/>
            <asp:Button runat="server" ID="btnValidateName" Text="用户名是否可用" ValidationGroup="groupName" OnClick="btnValidateName_Click"/>
            <asp:Label runat="server" ID="lblName" Text=""/>
            <br/>
            密码：<asp:TextBox runat="server" ID="txtPassword" TextMode="Password"/>
            <asp:RequiredFieldValidator runat="server" ID="rfvPassword" Display="Dynamic" ControlToValidate="txtPassword" ErrorMessage="请输入密码" SetFocusOnError="True" Text="*"/>
            <br/>
            确认密码：<asp:TextBox runat="server" ID="txtPasswordAgain" TextMode="Password"/>
            <asp:RequiredFieldValidator runat="server" ID="rfvPasswordAgain" ControlToValidate="txtPasswordAgain" Display="Dynamic" ErrorMessage="请输入确认密码" SetFocusOnError="True" Text="*"/>
            <asp:CompareValidator runat="server" ID="cvPassword" ControlToCompare="txtPassword" ControlToValidate="txtPasswordAgain" Display="Dynamic" ErrorMessage="密码和确认密码不一致" SetFocusOnError="True"/>
            <br/>
            生日：<asp:TextBox runat="server" ID="txtBirthday" />
            <asp:RequiredFieldValidator runat="server" ID="rfvBirthday" ControlToValidate="txtBirthday" Display="Dynamic" ErrorMessage="日期范围不正确"></asp:RequiredFieldValidator>
            <asp:RangeValidator runat="server" ID="rvBirthday" ControlToValidate="txtBirthday" Display="Dynamic" ErrorMessage="日期格式不正确" MaximumValue="2020-1-1" MinimumValue="1900-1-1" SetFocusOnError="True" Type="Date"/>
            <br/>
            电话号码：<asp:TextBox runat="server" ID="txtTelephone"/>
            <asp:RequiredFieldValidator runat="server" ID="rfvTelephone" ControlToValidate="txtTelephone" Display="Dynamic" ErrorMessage="请输入电话号码" SetFocusOnError="True" Text="*"/>
            <asp:RegularExpressionValidator runat="server" ID="revTelephone" ControlToValidate="txtTelephone" Display="Dynamic" ErrorMessage="电话号码格式错误" ValidationExpression="\d{3}-\d{8}"/>
            <br/>
            身份证：<asp:TextBox runat="server" ID="txtId"/>
            <asp:RequiredFieldValidator runat="server" ID="rfvId" ControlToValidate="txtId" Display="Dynamic" ErrorMessage="请输入身份证号" SetFocusOnError="True" Text="*"/>
            <asp:CustomValidator runat="server" Display="Dynamic" ID="csvId" ControlToValidate="txtId" ErrorMessage="身份证号错误" SetFocusOnError="True" OnServerValidate="CsvIdentity_ServerValidate"/>
            <br/>
            <asp:Button runat="server" ID="btnSubmit" Text="确定" OnClick="btnSubmit_Click"/>
            <asp:Label runat="server" ID="lblMsg"/>
            <asp:ValidationSummary runat="server" ID="vsSubmit" DisplayMode="BulletList" ShowMessageBox="True" ShowSummary="False"/>
            <asp:ValidationSummary runat="server" ID="vsName" DisplayMode="BulletList" ShowMessageBox="True" ShowSummary="False" ValidationGroup="groupName"/>
        </div>
    </form>
</body>
</html>
