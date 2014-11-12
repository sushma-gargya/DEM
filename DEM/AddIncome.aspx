<%@ Page Title="" Language="C#" MasterPageFile="~/DEMmaster.Master" AutoEventWireup="true" CodeBehind="AddIncome.aspx.cs" Inherits="DEM.AddIncome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
        <table align="center" style="width: 73%; border: 3px solid #0000FF">
            <tr>
                <td colspan="2" style="background-color: #00CC66; font-family: 'Comic Sans MS'; font-size: x-large; color: #FFFFFF; text-decoration: blink; text-transform: uppercase;">add income 
                    SOURCE</td>
            </tr>
            <tr>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 384px;">income type:</td>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium">
                    <asp:TextBox ID="incomenameTB" runat="server" BackColor="Aqua" 
                        BorderColor="#3366FF" BorderStyle="Inset" BorderWidth="1px" ForeColor="#3333FF" 
                        Height="30px" Width="150px"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="* Required" ForeColor="Red" 
                        style="font-size: x-small; margin-left:2px; margin-bottom:10px;" 
                        ControlToValidate="incomenameTB"></asp:RequiredFieldValidator>
                   
                </td>
            </tr>
            <tr>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 384px;">amount:</td>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium;">
                    <asp:TextBox ID="AmountTextBox" runat="server" BackColor="Aqua" BorderColor="#3366FF" BorderStyle="Inset" BorderWidth="1px" ForeColor="#3333FF" Height="30px" Width="150px"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="* Required" ForeColor="Red" 
                        style="font-size: x-small; margin-left:2px; margin-bottom:10px;" 
                        ControlToValidate="AmountTextBox"></asp:RequiredFieldValidator>
                   
                </td>
            </tr>
            <tr>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 384px;">
                    ACCOUNT DETAILS:</td>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium">
                    <asp:TextBox ID="DescriptionTextBox" runat="server" BackColor="Aqua" BorderColor="#3366FF" BorderStyle="Inset" BorderWidth="1px" ForeColor="#3333FF" Height="30px" Width="150px"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="* Required" ForeColor="Red" 
                        style="font-size: x-small; margin-left:2px; margin-bottom:10px;" 
                        ControlToValidate="DescriptionTextBox"></asp:RequiredFieldValidator>
                   
                </td>
            </tr>
            <tr>
                <td colspan="2" style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="SaveButton" runat="server" ImageUrl="~/Image/save.jpg" OnClick="SaveButton_Click" Height="30px" Width="80px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="CancelButton" runat="server" ImageUrl="~/Image/Cancel.png" OnClick="CancelButton_Click" Height="30px" Width="100px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 384px;">&nbsp;</td>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium">&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
