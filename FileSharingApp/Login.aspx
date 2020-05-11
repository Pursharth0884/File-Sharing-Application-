<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FileSharingApp.Login" %>

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
    <table align="center">
    <tr>
        <th colspan="3">Member Authentication</th></tr>
        <tr>
            <td>Email:</td><td>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
            </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Password:</td><td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td><td>
            <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                Text="Invalid Login/Password!!" Visible="False"></asp:Label>
            </td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td><td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Login" />
            </td><td>&nbsp;</td>
        </tr>
    </table>
    </form>
    <hr />
    <center>All Rights Reserved Copyrights 2019</center>
</body>
</html>
