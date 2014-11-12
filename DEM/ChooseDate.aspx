<%@ Page Title="" Language="C#" MasterPageFile="~/DEMmaster.Master" AutoEventWireup="true" CodeBehind="ChooseDate.aspx.cs" Inherits="DEM.ChooseDate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td colspan="2">
                <table align="center" class="style17" style="background-color: #00FFFF; border: thin solid #8080FF">
                    <tr>
                <td style="background-color: #00CC66; text-align: center;"><span style="color: #FFFFFF; font-family: 'Comic Sans MS'; font-size: x-large; text-transform: uppercase; text-decoration: blink;">CHOOSE DATE</span></td>
                    </tr>
                    <tr>
                        <td class="style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<table class="style17" style="font-family: 'Comic Sans MS'; font-size: medium; color: #0000FF">
                            <tr>
                                <td align="right" class="style30" style="font-family: 'Comic Sans MS'; font-size: medium; color: #0000FF">&nbsp;&nbsp;&nbsp; Start Date :</td>
                                <td class="style31">
                                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#66FF66" 
                                        style="margin-left: 0px" ReadOnly="True"></asp:TextBox>
                                    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Show</asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" Visible="False">Close</asp:LinkButton>
                                </td>
                                <td align="right" class="style29">&nbsp; End Date :</td>
                                <td class="style28">
                                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#99FF66" ReadOnly="True"></asp:TextBox>
                                    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Show</asp:LinkButton>
                                    &nbsp;&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" Visible="False">Close</asp:LinkButton>
                                     </td>
                            </tr>
                            <tr>
                                <td align="center"  colspan="2" style="height: 206px">
                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" 
                                        CellSpacing="1" Font-Names="Comic Sans MS" Font-Size="9pt" ForeColor="Black" Height="200px"
                                         NextPrevFormat="ShortMonth" onselectionchanged="Calendar1_SelectionChanged" Visible="False" Width="300px">
                                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                                        <DayStyle BackColor="#CCCCCC" />
                                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                                        <OtherMonthDayStyle ForeColor="#999999" />
                                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                                        
                                    </asp:Calendar>
                                </td>
                                <td align="center"  colspan="2" style="height: 206px">
                                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid"
                                         CellSpacing="1" Font-Names="Comic Sans MS" Font-Size="9pt" ForeColor="Black" Height="200px" 
                                        NextPrevFormat="ShortMonth" onselectionchanged="Calendar2_SelectionChanged" Visible="False" Width="300px" style="margin-top: 20px">
                                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                                        <DayStyle BackColor="#CCCCCC" />
                                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                                        <OtherMonthDayStyle ForeColor="#999999" />
                                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                                        
                                    </asp:Calendar>
                                    &nbsp; </td>
                            </tr>
                            <tr>
                                <td align="center" class="style21" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="SaveButton" runat="server" ImageUrl="~/Image/save.jpg" OnClick="SaveButton_Click" Height="40px" Width="100px" />
                                </td>
                                <td align="center" class="style21" colspan="2">
                    <asp:ImageButton ID="CancelButton" runat="server" ImageUrl="~/Image/Cancel.png" OnClick="CancelButton_Click" Height="40px" Width="120px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="style21" colspan="4">&nbsp;</td>
                            </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
