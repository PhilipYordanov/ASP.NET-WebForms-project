<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FIlms.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" GroupingText="Регистрация">
            <table>
                
                <tr>
                    <td>
                         Потребителско име:
                    </td>
                    <td>
                        <%--<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" ></asp:TextBox>--%>
                         <asp:TextBox ID="TextBox1" runat="server" TextMode="SingleLine"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Не сте въвели потребителско име" 
                        ControlToValidate="TextBox1"
                        CssClass="ValidationError"
                        ToolTip="Name is a REQUIRED field"
                              ForeColor="#FE2020" Font-Bold="true"
                        Font-Underline="True" 
                        ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td >
                        Парола</td>
                    <td>
                        <%-- <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3" TextMode="Password" ></asp:TextBox>--%>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Не сте въвели парола" 
                        ControlToValidate="TextBox2"
                        CssClass="ValidationError"
                        ToolTip="Password is a REQUIRED field"
                            ForeColor="#FE2020" Font-Bold="true"
                        Font-Underline="True" 
                        ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td >
                        Повторете парола</td>
                    <td>
                        <%-- <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style3" TextMode="Password" ></asp:TextBox>--%>
                         <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>

                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="Не сте въвели парола" 
                        ControlToValidate="TextBox2"
                        CssClass="ValidationError"
                        ToolTip="Password is a REQUIRED field"
                            ForeColor="#FE2020" Font-Bold="true"
                        Font-Underline="True" 
                        ></asp:RequiredFieldValidator>

                         

                        
                    </td>
                    
                </tr>
                <tr>
                    <td >
                        Въведете таен въпрос:</td>
                    <td>
                        <%-- <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style3" ></asp:TextBox>--%>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="SingleLine"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Не сте въвели таен въпрос" 
                        ControlToValidate="TextBox4"
                        CssClass="ValidationError"
                        ToolTip="SQuestion is a REQUIRED field"
                              ForeColor="#FE2020"
                            Font-Bold="true"
                            Font-Underline="True" 
                        ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td >
                        Таен отговор:</td>
                    <td>
                         <%--<asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style3" ></asp:TextBox>--%>
                         <asp:TextBox ID="TextBox5" runat="server" TextMode="SingleLine"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="не сте въвели таен отговор" 
                        ControlToValidate="TextBox5"
                        CssClass="ValidationError"
                        ToolTip="SAnsw is a REQUIRED field"
                              ForeColor="#FE2020"
                            Font-Bold="true"
                            Font-Underline="True" 
                        ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td >
                        Име:</td>
                    <td>
                         <asp:TextBox ID="TextBox6" runat="server" TextMode="SingleLine"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="не сте въвели име" 
                        ControlToValidate="TextBox5"
                        CssClass="ValidationError"
                        ToolTip="SAnsw is a REQUIRED field"
                              ForeColor="#FE2020"
                            Font-Bold="true"
                            Font-Underline="True" 
                        ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td >
                        Фиамилия:</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" TextMode="SingleLine"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="не сте въвели фамилия" 
                        ControlToValidate="TextBox5"
                        CssClass="ValidationError"
                        ToolTip="SAnsw is a REQUIRED field"
                              ForeColor="#FE2020"
                            Font-Bold="true"
                            Font-Underline="True" 
                        ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Пол:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="0">Моля,изберете пол</asp:ListItem>  
                            <asp:ListItem Value="1">Мъж</asp:ListItem>
                            <asp:ListItem Value="2">Жена</asp:ListItem>
                        </asp:DropDownList>
                         <asp:RequiredFieldValidator id="RequiredFieldValidator7" 
                        InitialValue="0" 
                        ControlToValidate="DropDownList1"
                        ErrorMessage="не сте избрали пол"
                        ForeColor="#FE2020"
                        Font-Bold="true"
                        Font-Underline="True" 
                        runat="server"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Дата на раждане:</td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="Black" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="174px" Width="230px" NextMonthText="&gt;&gt;" PrevMonthText="&lt;&lt;" SelectionMode="DayWeekMonth" BorderStyle="Solid" CellSpacing="1" NextPrevFormat="ShortMonth">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                            <DayStyle BackColor="#CCCCCC" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                            <TodayDayStyle BackColor="#999999" ForeColor="red" />
                        </asp:Calendar>
                        <%--<ajaxToolkit:Calendar runat="server"
    TargetControlID="Date1"
    CssClass="ClassName"
    Format="MMMM d, yyyy"
    PopupButtonID="Image1" />--%>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:right;"><asp:Button ID="Button1" runat="server" Text="Регистрация" Font-Underline="True" OnClick="Button1_Click" PostBackUrl="~/LogIn.aspx" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
