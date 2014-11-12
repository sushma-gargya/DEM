<%@ Page Title="" Language="C#" MasterPageFile="~/DEMmaster.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="DEM.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 795px; height:223px; border-collapse: collapse; border: 3px solid #0000FF; background-color: #00FFFF" align="center">
        <tr>
            <td colspan="4" style="background-color: #00CC66; font-family: 'Comic Sans MS'; font-size: x-large; color: #FFFFFF; text-decoration: blink; text-transform: uppercase;">
                <strong style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration</strong></td>
        </tr>
        <tr>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 205px;">
                &nbsp;</td>
            <td class="auto-style2" 
                
                style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; width: 173px; height: 43px; text-align: right;"><strong>Name:</strong></td>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 510px; text-align: left;" 
                class="auto-style2">
                <asp:TextBox ID="UserNameTextBox" runat="server" BackColor="Aqua" 
                    BorderColor="#3366FF" BorderStyle="Inset" BorderWidth="1px" ForeColor="#3333FF" 
                    Height="30px" Width="150px" style="margin-left: 15px"></asp:TextBox>
            &nbsp; <span style="font-size: x-large">*</span></td>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 198px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 205px;">
                &nbsp;</td>
            <td class="auto-style2" 
                
                style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; width: 173px; height: 43px; text-align: right; font-weight: 700;">email Id:</td>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 510px; text-align: left;" 
                class="auto-style2">
                <asp:TextBox ID="emailTextBox" runat="server" BackColor="Aqua" 
                    BorderColor="#3366FF" BorderStyle="Inset" BorderWidth="1px" ForeColor="#3333FF" 
                    Height="30px" Width="150px" style="margin-left: 15px"></asp:TextBox>
            &nbsp; <span style="font-size: x-large">*<asp:RegularExpressionValidator 
                    ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="emailTextBox" 
                    ErrorMessage="Email id should be like abc@example.com" Font-Size="XX-Small" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
                </span>
            </td>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 198px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 205px;">
                &nbsp;</td>
            <td class="auto-style2" 
                
                style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; width: 173px; height: 43px; text-align: right;"><strong>Password:</strong></td>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 510px; text-align: left;" 
                class="auto-style2">
                <asp:TextBox ID="PasswordTextBox" runat="server" BackColor="Aqua" 
                    BorderColor="#3366FF" BorderStyle="Inset" BorderWidth="1px" ForeColor="#3333FF" 
                    Height="30px" Width="150px" style="margin-left: 15px" TextMode="Password"></asp:TextBox>
            &nbsp; <span style="font-size: x-large">*</span></td>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 198px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 205px;">
                &nbsp;</td>
            <td class="auto-style2" 
                
                style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; width: 173px; height: 43px; text-align: right;"><strong>Confirm Password:</strong></td>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 510px; text-align: left;" 
                class="auto-style2">
                <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" BackColor="Aqua" 
                    BorderColor="#3366FF" BorderStyle="Inset" BorderWidth="1px" ForeColor="#3333FF" 
                    Height="30px" Width="150px" style="margin-left: 15px" TextMode="Password"></asp:TextBox>
            &nbsp; <span style="font-size: x-large">*</span></td>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 198px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 205px;">
                &nbsp;</td>
            <td class="auto-style2" 
                
                style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; width: 173px; height: 43px; text-align: right; font-weight: 700;">Security Question:</td>
            <td  style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 510px; text-align: left;" 
                class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="Aqua" 
                        Font-Bold="True" ForeColor="#3333FF" Height="35px" Width="250px" 
                        style="text-align: left; margin-left: 15px;" >
                        <asp:ListItem Value="0">Select Security Question</asp:ListItem>
                        <asp:ListItem Value="1">What is your mother&#39;s maiden name?</asp:ListItem>
                        <asp:ListItem Value="2">Which is your birth city</asp:ListItem>
                    </asp:DropDownList>
                    <span style="font-size: x-large">*</span></td>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 198px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 205px;">
                &nbsp;</td>
            <td class="auto-style2" 
                
                style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; width: 173px; height: 43px; text-align: right;"><strong>Answer:</strong></td>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 510px; text-align: left;" 
                class="auto-style2">
                <asp:TextBox ID="AnswerTextBox" runat="server" BackColor="Aqua" 
                    BorderColor="#3366FF" BorderStyle="Inset" BorderWidth="1px" ForeColor="#3333FF" 
                    Height="30px" Width="150px" style="margin-left: 15px"></asp:TextBox>
            &nbsp; <span style="font-size: x-large">*</span></td>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 198px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 44px; width: 205px">&nbsp;</td>
            <td style="width: 173px; height: 44px;">&nbsp;</td>
            <td style="height: 44px; width: 510px">&nbsp;</td>
            <td style="height: 44px; width: 198px;">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 44px; width: 205px">&nbsp;</td>
            <td style="width: 173px; height: 44px;">&nbsp;</td>
            <td style="height: 44px; width: 510px">&nbsp;</td>
            <td style="height: 44px; width: 198px;">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 44px; width: 205px; text-align: center;">&nbsp;</td>
            <td style="height: 44px; text-align: center;" colspan="2">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="90%" 
                    ImageUrl="~/Image/Register.jpg"  style="text-align: left; margin-left: 0px" 
                    Width="120px" OnClick="ImageButton3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" Height="34px" ImageUrl="~/Image/Reset.jpg"  Width="100px" />
            </td>
            <td style="height: 44px; width: 198px; text-align: center;">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 44px; width: 205px">&nbsp;</td>
            <td style="width: 173px; height: 44px;">&nbsp;</td>
            <td style="height: 44px; width: 510px">&nbsp;</td>
            <td style="height: 44px; width: 198px;">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
