<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacherlogin.aspx.cs" Inherits="Nanda_Kishore.teacherlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet"href="styleforlogin.css" />
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div class="h1">

 
     <h2>Teacher Login</h2>
     <p>
         &nbsp;</p>
     <p>
         &nbsp;</p>
     <p>
         &nbsp;</p>
     <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="Text1" runat="server"></asp:TextBox><br /><br /> 
             <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;

     <asp:TextBox ID="Text2" runat="server" TextMode="Password"></asp:TextBox><br /><br />
         <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;

         <input type="reset" id="Button2" name="reset" value="Clear" />
     </center>
        </div>
    </form>
</body>
</html>
