<%@ Page Title="" Language="C#" MasterPageFile="~/DEMmaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DEM.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
     <asp:Panel runat="server" ID="MainPanel" Width="100%" Height="500px" BackColor="#00ffff" style="margin-right: 0px">
         <br />
         <br />
         <br />
         <br />
         <br />
         
    <table style="width: 795px; height:223px; border-collapse: collapse; border: 3px solid #0000FF; background-color: #00FFFF" align="center">
        <tr>
            <td class="auto-style2" colspan="4" 
                style="font-family: 'Comic Sans MS'; font-size: x-large; color: #33CC33; text-decoration: blink; text-transform: uppercase; height: 52px; width: 1537px; text-align: center;">
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    
                    style="position:absolute; text-align: right; top: 180px; left: 984px; height: 30px; width: 168px; font-size: medium;" 
                    ForeColor="Blue" NavigateUrl="~/Registration.aspx">Click to Register</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="4" 
                style="font-family: 'Comic Sans MS'; font-size: x-large; color: #33CC33; text-decoration: blink; text-transform: uppercase; height: 52px; width: 1537px;">
                <strong style="text-align: right">Login</strong></td>
        </tr>
        <tr>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 140px;">&nbsp;</td>
            <td class="auto-style2" 
                style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; width: 310px; height: 43px; text-align: right;"><strong>
                User&nbsp; Id:</strong></td>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 280px;" class="auto-style2">
                <asp:TextBox ID="UserNameTextBox" runat="server" BackColor="Aqua" BorderColor="#3366FF" BorderStyle="Inset" BorderWidth="1px" ForeColor="#3333FF" Height="30px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="UserNameTextBox" ErrorMessage="* Required" ForeColor="Red" 
                    style="font-size: x-small; margin-left: 2px; margin-bottom: 10px;"></asp:RequiredFieldValidator>
            </td>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 198px;">&nbsp;</td>
        </tr>
        <tr>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 140px;">&nbsp;</td>
            <td class="auto-style2" 
                style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; width: 310px; height: 43px; text-align: right;"><strong>Password:</strong></td>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 280px;" class="auto-style2">
                <asp:TextBox ID="PasswordTextBox" runat="server" BackColor="Aqua" 
                    BorderColor="#3366FF" BorderStyle="Inset" BorderWidth="1px" ForeColor="#3333FF" 
                    Height="30px" Width="150px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="PasswordTextBox" EnableTheming="True" 
                    ErrorMessage="* Required" ForeColor="Red" 
                    style="font-size: x-small; margin-left: 2px; margin-bottom: 10px;"></asp:RequiredFieldValidator>
            </td>
            <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 198px;">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 43px; width: 140px; text-align: center;">&nbsp;</td>
            <td style="height: 43px; text-align: right;" class="auto-style2" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/submit.gif" OnClick="ImageButton1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" Height="35px" 
                    ImageUrl="~/Image/Reset.jpg" OnClick="ImageButton2_Click" 
                    style="text-align: right" />
            </td>
            <td style="height: 43px; width: 198px; text-align: center;">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 44px; width: 140px">&nbsp;</td>
            <td style="width: 310px; height: 44px;">&nbsp;</td>
            <td style="height: 44px; width: 280px; text-align: right;">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                    Font-Italic="True" NavigateUrl="~/Forgetpassword.aspx" 
                    style="font-size: small; text-align: right">Forget Password</asp:HyperLink>
            </td>
            <td style="height: 44px; width: 198px;">&nbsp;</td>
        </tr>
    </table>
    </asp:Panel>
</asp:Content>
