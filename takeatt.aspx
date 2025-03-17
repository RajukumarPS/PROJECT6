<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="takeatt.aspx.cs" Inherits="Nanda_Kishore.takeatt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="245px" Width="324px">
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="usn" HeaderText="usn" SortExpression="usn" />
                        <asp:BoundField DataField="branch" HeaderText="branch" SortExpression="branch" />
                        <asp:BoundField DataField="section" HeaderText="section" SortExpression="section" />
                        <asp:CheckBoxField HeaderText="Attendence" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project6ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:project6ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [students]"></asp:SqlDataSource>

            </center>
        </div>
    </form>
</body>
</html>
