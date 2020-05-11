<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chatting.aspx.cs" Inherits="FileSharingApp.chatting" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table>
        <tr>
            <td>Name:</td><td>
            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>        
        <tr>
            <td>&nbsp;</td><td>Chat Communication</td><td>&nbsp;</td>
        </tr>        
        <tr>
            <td>&nbsp;</td><td>
            <asp:TextBox ID="TextBox2" runat="server" Height="200px" ReadOnly="True" 
                TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td><td>&nbsp;</td>
        </tr>        
                <tr>
                    <td>
                        Message:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            Text="Send Message" />
                        <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="10000" 
                            ontick="Timer1_Tick">
                        </asp:Timer>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
    </table>
        </ContentTemplate>
    
    </asp:UpdatePanel>
    
    
    </form>
</body>
</html>
