<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2nd Admin home.aspx.cs" Inherits="Nanda_Kishore.seatallot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home - Seat Allotment & Attendance</title>
    <style>
             body {
            font-family: 'Arial', sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
            background:white;
            color:black;
        }

        .container {
            background-color:gray; /* Transparent White Box */
            padding: 30px;
            width: 50%;
            margin: 80px auto;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
            color:deepskyblue;
        }

        h1 {
            font-size: 28px;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-bottom: 20px;
        }

        
        .styled-button {
            background: rgba(255, 255, 255, 0.2);
            color:black;
            padding: 12px 24px;
            font-size: 18px;
            border: 2px solid white;
            border-radius: 30px;
            cursor: pointer;
            margin: 15px;
            transition: all 0.3s ease;
            width: 250px;
            display: inline-block;
        }

        .styled-button:hover {
            background:white;
            color: #6a11cb;
            transform: scale(1.1);
            box-shadow: 0 4px 10px rgba(255, 255, 255, 0.3);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Add new Teacher</h1>
            <a href="newteacher.aspx"><asp:Button ID="Button1" runat="server" Text="Add Teacher" CssClass="styled-button" OnClick="Button1_Click" /></a>

            <h1>Attendance Management</h1>
           
         <asp:Button ID="Button2" runat="server" Text="Manage Attendance" CssClass="styled-button" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
