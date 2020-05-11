<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="FileSharingApp.About" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>File Sharing Application</title>
    <script>
        function openChat() {
            window.open("chatting.aspx", "", "left=600,top=250,width=350,height=400");
        }
    </script>
</head>
<body>
    <img src="banner.jpg" alt="" style="width:100%; height:250px"><hr />
    <form id="form1" runat="server">
    <table width="100%">
    <tr>
        <td>
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/index.aspx">Home</asp:HyperLink>
        </td><td>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
        </td><td>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/profile.aspx">My Profile</asp:HyperLink>
        </td>
        <td>
            <a href="#" onclick="openChat()">Chat</a>
        </td>
        <td>
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/About.aspx">About</asp:HyperLink>
        </td>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
        </td>
    </tr>
    </table><hr />
    <center>
        <h2>File Sharing System</h2>
        <h2>Design By :ABC</h2>
    </center>
    </form>
    <hr />
    <center>All Rights Reserved Copyrights 2019</center>
</body>
</html>

