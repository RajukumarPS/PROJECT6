<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newteacher.aspx.cs" Inherits="Nanda_Kishore.newteacher" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet"href="styleforlogin.css" />
</head>
<body>
    <h1> you are adding a teacher username and password that enables teacher to login and take attendence</h1><br /><br />
    <center>
    <form id="form1" runat="server">
       <br /> <div>
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Clear" /><br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
    </center>
</body>
</html>