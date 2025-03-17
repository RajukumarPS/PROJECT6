<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="attendence.aspx.cs" Inherits="Nanda_Kishore.attendence" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <div>
    <center>
    <form id="form2" runat="server">
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
            <asp:Button ID="Button12" runat="server" Text="Login" OnClick="Button1_Click1" />&nbsp;&nbsp;&nbsp;

            <input type="reset" id="Button2" name="reset" value="Clear" />
        </center>
        </center>
    </form>
        </div>
    
   </body>
</html>













        </div>
    </form>
</body>
</html>
