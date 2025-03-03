<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="attendence manage.aspx.cs" Inherits="Nanda_Kishore.AttendanceManage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Attendance Management</title>
    <style>
        /* General Page Styling */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: white;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 50px auto;
            background: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
        }

        h1 {
            font-size: 28px;
            text-transform: uppercase;
            margin-bottom: 20px;
        }

        /* Search Bar */
        .search-container {
            margin-bottom: 20px;
        }

        input[type="text"] {
            width: 50%;
            padding: 10px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            color: black;
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background: #007bff;
            color: white;
        }

        tr:hover {
            background: #f1f1f1;
        }

        /* Action Buttons */
        .mark-btn {
            background: #28a745;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 5px;
        }

        .mark-btn:hover {
            background: #218838;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Attendance Management</h1>

            <!-- Search Bar -->
            <div class="search-container">
                <input type="text" id="searchBox" placeholder="Search Student..." onkeyup="filterTable()" />
            </div>

            <!-- Attendance Table -->
            <table id="attendanceTable">
                <thead>
                    <tr>
                        <th>Student ID</th>
                        <th>Name</th>
                        <th>Date</th>
                        <th>Attendance</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>101</td>
                        <td>Raju</td>
                        <td>2025-03-02</td>
                        <td><asp:Button ID="btnMark1" runat="server" Text="Mark Present" CssClass="mark-btn" /></td>
                    </tr>
                    <tr>
                        <td>102</td>
                        <td>Shashi</td>
                        <td>2025-03-02</td>
                        <td><asp:Button ID="btnMark2" runat="server" Text="Mark Present" CssClass="mark-btn" /></td>
                    </tr>
                    <tr>
                        <td>103</td>
                        <td>loki</td>
                        <td>2025-03-02</td>
                        <td><asp:Button ID="btnMark3" runat="server" Text="Mark Present" CssClass="mark-btn" /></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>

    <script>
        function filterTable() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("searchBox");
            filter = input.value.toUpperCase();
            table = document.getElementById("attendanceTable");
            tr = table.getElementsByTagName("tr");

            for (i = 1; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[1]; // Search by student name
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    tr[i].style.display = txtValue.toUpperCase().indexOf(filter) > -1 ? "" : "none";
                }
            }
        }
    </script>
</body>
</html>
