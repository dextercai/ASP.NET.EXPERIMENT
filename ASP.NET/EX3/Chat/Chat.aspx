<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Chat.aspx.cs" Inherits="EX3_Chat_Chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../../Scripts/jquery-3.5.1.min.js"></script>
    <script>
        function refresh() {
            $.ajax({
                url: "Ajax.aspx",
                cache: false,
                success: function(text) {
                    document.getElementById("divMsg").innerHTML = text;
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    alert("网络存在问题");
                }
            });
            setTimeout("refresh()", 500);
        }
    </script>
</head>
<body onload="refresh()">
    <form id="form1" runat="server">
        <div id="divMsg"></div>
        <div>
            <asp:Label runat="server" ID="lblName"/><br/>
            <asp:TextBox runat="server" TextMode="MultiLine" ID="txtMessage"/><br/>
            <asp:Button runat="server" ID="btnSend" Text="发送" OnClick="btnSend_Click"/>
        </div>
    </form>
</body>
</html>
