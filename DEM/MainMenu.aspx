<%@ Page Title="" Language="C#" MasterPageFile="~/DEMmaster.Master" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="DEM.MainMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
    <table align="center" style="width: 73%; border: 3px solid #0000FF">
        <tr>
            <td colspan="2" style="background-color: #00CC66">
                <span style="color: #FFFFFF; font-family: 'Comic Sans MS'; font-size: x-large; text-transform: uppercase; text-decoration: blink;">
                <strong>&nbsp;Menu</strong></span></td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: #00CC66; text-align: right;">
                <asp:Label ID="welcome_message" runat="server" Text="Time"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="SpentDetailsButton" runat="server" BackColor="#3333FF" BorderColor="White" BorderStyle="Outset" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="50px" Text="Spent Details" Width="250px" OnClick="SpentDetailsButton_Click" />
            </td>
            <td>
                <asp:Button ID="IncomeDetailsButton" runat="server" BackColor="#3333FF" BorderColor="White" BorderStyle="Outset" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="50px" Text="Income Details" Width="250px" OnClick="IncomeDetailsButton_Click" />
            </td>
        </tr>
        <tr>
            <td style="height: 50px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="AddLoanButton" runat="server" BackColor="#3333FF" BorderColor="White" BorderStyle="Outset" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="50px" Text="Add Loans / Income  Source" Width="250px" OnClick="AddLoanButton_Click" />
            </td>
            <td>
                <asp:Button ID="ReportsButton" runat="server" BackColor="#3333FF" BorderColor="White" BorderStyle="Outset" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="50px" Text="Reports" Width="250px" OnClick="ReportsButton_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Your current account balance is </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="2000 Rs"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>
