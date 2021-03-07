﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="EX1_Course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>学年：
                <asp:DropDownList ID="YearList" runat="server" AutoPostBack="True"></asp:DropDownList>
                学期：
                <asp:DropDownList ID="TermList" runat="server" AutoPostBack="True"></asp:DropDownList>
                分院：
                <asp:DropDownList ID="CollegeList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CollegeList_SelectedIndexChanged"></asp:DropDownList>
                教师：
                <asp:DropDownList ID="TeacherList" runat="server" AutoPostBack="True"></asp:DropDownList>

            </p>
            
        </div>
    </form>
</body>
</html>
