<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Nanda_Kishore.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet"type="text/css"href="styleforlogin.css"/>
    <title></title>
</head>
<body>
    <div class="h1">
    <center>
    <form id="form1" runat="server">
        <h2>Admin Login</h2>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Textbox1" runat="server"></asp:TextBox><br /><br /> 
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:TextBox ID="Textbox2" runat="server" TextMode="Password"></asp:TextBox><br /><br />
        <center>
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;

            <input type="reset" id="Button2" name="reset" value="Clear" />
        </center>
    </form>
        </div>
    
   </body>
</html>
