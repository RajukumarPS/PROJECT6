
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ATT.aspx" Inherits="StudentApp.Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Student</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet"href="styleforlogin.css" />
</head>
<body><center>
    <form id="form1" runat="server">
        <div>
            <h2>Add New Student</h2>

            <label for="txtName">Name:</label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br/>

            <label for="txtUSN">USN:</label>
            <asp:TextBox ID="txtUSN" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUSN" runat="server" ControlToValidate="txtUSN"
                ErrorMessage="USN is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br/>

            <label for="ddlBranch">Branch:</label>
            <asp:DropDownList ID="ddlBranch" runat="server">
                <asp:ListItem Value="">--Select Branch--</asp:ListItem>
                <asp:ListItem Value="MVA">MCA</asp:ListItem>
                <asp:ListItem Value="MBA">MBA</asp:ListItem>
               
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvBranch" runat="server" ControlToValidate="ddlBranch"
                InitialValue="" ErrorMessage="Please select a branch" ForeColor="Red"></asp:RequiredFieldValidator>
            <br/>

            <label for="txtSection">Section:</label>
            <asp:TextBox ID="txtSection" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvSection" runat="server" ControlToValidate="txtSection"
                ErrorMessage="Section is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br/>

            <asp:Button ID="btnSubmit" runat="server" Text="Add Student" OnClick="btnSubmit_Click" />
            <br/>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
    </center>
</body>
</html>
