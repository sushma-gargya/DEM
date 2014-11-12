<%@ Page Title="" Language="C#" MasterPageFile="~/DEMmaster.Master" AutoEventWireup="true" CodeBehind="SpentDetails.aspx.cs" Inherits="DEM.SpentDetails"  EnableSessionState="True" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
        <table align="center" style="width: 73%; border: 3px solid #0000FF">
            <tr>
                <td colspan="2" style="background-color: #00CC66; font-family: 'Comic Sans MS'; font-size: x-large; color: #FFFFFF; text-decoration: blink; text-transform: uppercase;">spent details</td>
            </tr>
            <tr>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 372px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged1" AutoPostBack ="true" 
                         >
                        <asp:ListItem Value="0">Loan</asp:ListItem>
                        <asp:ListItem Value="1" Selected="True">Daily Expenditure</asp:ListItem>
                    </asp:RadioButtonList>
                   
                </td>
            </tr>
            <tr>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; height: 61px; width: 372px; text-align: right;"><asp:Label 
                        ID="loanname_lbl" runat="server" Text="LOAN NAME :            " 
                        Visible="False"></asp:Label>
                </td>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; height: 46px;">
                    <asp:DropDownList ID="ddlLoan_name" runat="server" Height="30px" Width="156px" 
                        OnSelectedIndexChanged="ddlLoan_name_SelectedIndexChanged" AutoPostBack="True" 
                        Enabled="False">
                        <asp:ListItem Value="0">Select one</asp:ListItem>
                    </asp:DropDownList>
                                      
                   
                </td>
            </tr>
            
            <tr>
                
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; height: 61px; width: 372px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; amount:</td>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; height: 61px;">
                    <asp:TextBox ID="AmountTextBox" runat="server" BackColor="Aqua" BorderColor="#3366FF" BorderStyle="Inset" BorderWidth="1px" ForeColor="#3333FF" Height="30px" Width="150px"></asp:TextBox>
                   
                   
                </td>
               
            </tr>
                
            <tr>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 372px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Description:</td>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium">
                    <asp:TextBox ID="DescriptionTextBox" runat="server" BackColor="Aqua" BorderColor="#3366FF" BorderStyle="Inset" BorderWidth="1px" ForeColor="#3333FF" Height="30px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 23px">&nbsp;</td>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; height: 23px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="SaveButton" runat="server" ImageUrl="~/Image/save.jpg" OnClick="SaveButton_Click" Height="30px" Width="80px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="CancelButton" runat="server" ImageUrl="~/Image/Cancel.png" OnClick="CancelButton_Click" Height="30px" Width="100px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium; width: 372px;">
                    &nbsp;</td>
                <td style="font-family: 'Comic Sans MS'; color: #009900; text-transform: uppercase; font-size: medium">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
