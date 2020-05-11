<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FileSharingApp.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Sharing Application</title>
    <script>
        function openChat() {
            window.open("chatting.aspx","","left=600,top=250,width=350,height=400");
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

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="FileId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="FileId" HeaderText="FileId" ReadOnly="True" 
                SortExpression="FileId" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="UploadDate" HeaderText="UploadDate" 
                SortExpression="UploadDate" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
            <asp:BoundField DataField="FileName" HeaderText="FileName" 
                SortExpression="FileName" />
            <asp:HyperLinkField DataNavigateUrlFields="FileId,FileName" 
                DataNavigateUrlFormatString="Upload\{0}_{1}" HeaderText="Download File" 
                Text="Download" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DBConnectionString2 %>" 
        SelectCommand="SELECT * FROM [Files]"></asp:SqlDataSource>

    </form>
    <hr />
    <center>All Rights Reserved Copyrights 2019</center>
</body>
</html>
