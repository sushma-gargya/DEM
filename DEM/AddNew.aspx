<%@ Page Title="" Language="C#" MasterPageFile="~/DEMmaster.Master" AutoEventWireup="true" CodeBehind="AddNew.aspx.cs" Inherits="DEM.AddNew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
        <table align="center" style="width: 73%; border: 3px solid #0000FF">
            <tr>
                <td colspan="2" style="background-color: #00CC66"><span style="color: #FFFFFF; font-family: 'Comic Sans MS'; font-size: x-large; text-transform: uppercase; text-decoration: blink;"><strong>
                    Add SOURCES</strong></span></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="AddLoanButton" runat="server" BackColor="#3333FF" BorderColor="White" BorderStyle="Outset" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="50px" Text="ADD LOANS" Width="250px" OnClick="SpentDetailsButton_Click" />
                </td>
                <td>
                    <asp:Button ID="AddIncomeButton" runat="server" BackColor="#3333FF" BorderColor="White" BorderStyle="Outset" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="50px" Text="ADD INCOME SOURCE" Width="250px" OnClick="IncomeDetailsButton_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
