<%@ Page Title="" Language="C#" MasterPageFile="~/DEMmaster.Master" AutoEventWireup="true" CodeBehind="IncomeDetails.aspx.cs" Inherits="DEM.IncomeDetails" EnableSessionState="True" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
    <table align="center" style="width: 73%; border: 3px solid #0000FF">
        <tr>
            <td colspan="2" style="background-color: #00CC66"><span style="color: #FFFFFF; font-family: 'Comic Sans MS'; font-size: x-large; text-transform: uppercase; text-decoration: blink;">Income details</span></td>
        </tr>
        <tr>
            <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 384px;">
                source:</td>
            <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium">
                <asp:DropDownList ID="income_source_ddl" runat="server" BackColor="Aqua" 
                    Font-Bold="True" ForeColor="#3333FF" Height="35px" Width="155px" 
                    AutoPostBack="True" 
                    OnSelectedIndexChanged="income_source_ddl_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 384px;">Amount:</td>
            <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium;">
                <asp:TextBox ID="AmountTextBox" runat="server" BackColor="Aqua" BorderColor="#3366FF" BorderStyle="Inset" BorderWidth="1px" ForeColor="#3333FF" Height="30px" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 384px;">
                account details/description:</td>
            <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium">
                <asp:TextBox ID="DescriptionTextBox" runat="server" BackColor="Aqua" BorderColor="#3366FF" BorderStyle="Inset" BorderWidth="1px" ForeColor="#3333FF" Height="30px" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium">
                <asp:ImageButton ID="SaveButton" runat="server" ImageUrl="~/Image/submit.gif" OnClick="SaveButton_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="CancelButton" runat="server" ImageUrl="~/Image/Cancel.png" OnClick="CancelButton_Click" Height="34px" Width="120px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 384px;">
                &nbsp;</td>
            <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium">
                &nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>
