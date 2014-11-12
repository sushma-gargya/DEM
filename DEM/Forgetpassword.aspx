<%@ Page Title="" Language="C#" MasterPageFile="~/DEMmaster.Master" AutoEventWireup="true" CodeBehind="Forgetpassword.aspx.cs" Inherits="DEM.Forgetpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="text-align: center">
        <table align="center" style="width: 73%; border: 3px solid #0000FF">
            <tr>
                <td colspan="2" style="background-color: #00CC66; font-family: 'Comic Sans MS'; font-size: x-large; color: #FFFFFF; text-decoration: blink; text-transform: uppercase;">
                    PASSWORD RECOVERY WIZARD</td>
            </tr>
            <tr>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 372px; text-align: justify; height: 41px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USER ID </td>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; text-align: left; height: 41px; width: 304px;">
                <asp:TextBox ID="UseridTb" runat="server" BackColor="Aqua" BorderColor="#3366FF" 
                        BorderStyle="Inset" BorderWidth="1px" ForeColor="#3333FF" Height="30px" 
                        Width="150px" style="text-align: left"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="* Required" ForeColor="Red" 
                        style="font-size: x-small; margin-left:2px; margin-bottom:10px;" 
                        ControlToValidate="UseridTb"></asp:RequiredFieldValidator>
                   
                </td>
            </tr>
            <tr>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; height: 31px; width: 372px; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SECURITY QUESTION
                </td>
                 <td style="color: #33CC33; font-family: Arial, Helvetica, sans-serif; font-size: medium; text-transform: capitalize; height: 43px; width: 304px; text-align: left;" 
                    class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="Aqua" Font-Bold="True" ForeColor="#3333FF" Height="35px" Width="250px">
                        <asp:ListItem Value="Select Security Question">Select Security Question</asp:ListItem>
                        <asp:ListItem Value="1">What is your Mother&#39;s maiden name ?</asp:ListItem>
                        <asp:ListItem Value="2">Which is your birth city</asp:ListItem>
                    </asp:DropDownList>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="* Required" ForeColor="Red" 
                        style="font-size: x-small; margin-left:2px; margin-bottom:10px;" 
                         ControlToValidate="DropDownList1" InitialValue="Select Security Question"></asp:RequiredFieldValidator>
                   
            </td>
            </tr>
            
            <tr>
                
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; height: 30px; width: 372px; text-align: justify;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    ANSWER</td>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; height: 30px; text-align: left; width: 304px;">
                <asp:TextBox ID="answerTB" runat="server" BackColor="Aqua" BorderColor="#3366FF" 
                        BorderStyle="Inset" BorderWidth="1px" ForeColor="#3333FF" Height="30px" 
                        Width="150px" style="text-align: left"></asp:TextBox>
                   
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="* Required" ForeColor="Red" 
                        style="font-size: x-small; margin-left:2px; margin-bottom:10px;" 
                        ControlToValidate="answerTB"></asp:RequiredFieldValidator>
                   
                   
                </td>
               
            </tr>
                
            <tr>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 372px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 304px;">
                    &nbsp;</td>
            </tr>
                
            <tr>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 372px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" style="text-align: justify" 
                        Text="YOUR PASSWORD IS" Visible="False"></asp:Label>
                </td>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; text-align: left; width: 304px;">
                    <asp:Label ID="passwordlabel" runat="server" style="text-align: left" 
                        Text="YOUR PASSWORD IS" Visible="False"></asp:Label>
                </td>
            </tr>
                
            <tr>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 372px;">
                    &nbsp;</td>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 304px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 23px" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;<asp:ImageButton ID="SaveButton" runat="server" ImageUrl="~/Image/save.jpg" 
                        OnClick="SaveButton_Click" Height="30px" Width="80px" 
                        style="text-align: justify" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="CancelButton" runat="server" ImageUrl="~/Image/Cancel.png"  Height="30px" Width="100px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 372px;">
                    &nbsp;</td>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 304px;">
                    &nbsp;</td>
            </tr>
        </table>
    </div>

</asp:Content>
