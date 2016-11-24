<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="FIlms.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="border-style: inherit">
        <%--Първоначалният панел --%>
            <asp:Panel ID="Panel1" runat="server" GroupingText="Вход">
            <table>
                <tr>
                    <td>
                         Име:
                    </td>
                    <td>
                       <asp:TextBox ID="TextBox1" runat="server" TextMode="SingleLine" ></asp:TextBox>
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
                          <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Не сте въвели парола" 
                        ControlToValidate="TextBox2"
                        CssClass="ValidationError"
                        ToolTip="Name is a REQUIRED field"
                              ForeColor="#FE2020" Font-Bold="true"
                        Font-Underline="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:right;"><asp:Button ID="Button1" runat="server" Text="Вход" Width="116px" /></td>
                </tr>
                <tr>
                    <td >
                        <asp:Button ID="Button2" runat="server" Text="Забравена парола" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
                </asp:Panel>
        <%--край на панела--%>

                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Възстановяване на парола чрез мобилен телефон:" Visible="False" OnCheckedChanged="CheckBox1_CheckedChanged" OnDataBinding="Page_Load" AutoPostBack="True" />

        <%--Панела след натискане на забравена парола--%>
            <asp:Panel ID="Panel2" runat="server" GroupingText=" Възстановяване на парола чрез таен въпрос:" Visible="False">
                <table>
                    <tr>
                        <td>
                            Таен въпрос:

                        </td>
                    </tr>
                    <tr>
                        <td>
                            Таен отговор</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Не сте въвели таен отговор" 
                        ControlToValidate="TextBox3"
                        CssClass="ValidationError"
                        ToolTip="Name is a REQUIRED field"
                              ForeColor="#FE2020" Font-Bold="true"
                               Font-Underline="True"
                        ></asp:RequiredFieldValidator>
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Виж Парола" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        <%--край на панела --%>

        <%--Панел за въстановяване на парола с мобилен телефон--%>
       <asp:Panel ID="Panel3" runat="server" GroupingText=" Възстановяване на парола чрез мобилен телефон" Visible="False">
                <table>
                    
                    <tr>
                        <td>
                            Мобилен телефон :  
                            <asp:Label ID="Label5" runat="server" Text="+359"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" TextMode="Phone" MaxLength="9" ></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Не сте въвели мобилен телефон" 
                        ControlToValidate="TextBox5"
                        CssClass="ValidationError"
                        ToolTip="Name is a REQUIRED field"
                        ForeColor="#FE2020" Font-Bold="true"
                        Font-Underline="True" 
                                 
                        ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Не сте въвели коректен мобилен телефон"
                            ControlToValidate="TextBox5"
                            CssClass="ValidationError"
                            ToolTip="тряя няма как" 
                            ValidationExpression=".{9,9}"  
                            ForeColor="#FE2020"
                            Font-Bold="true"
                            Font-Underline="True" ></asp:RegularExpressionValidator>
                            <asp:Button ID="Button4" runat="server" Text="Виж парола" OnClick="Button4_Click" />
                            


                        </td>
                    </tr>
                </table>
            </asp:Panel>

       <%-- край на панела --%>
        </div>
    
       <asp:Label ID="Label4" runat="server" Text="Вашата парола е : " Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" Visible="False" Width="461px" BorderStyle="None"></asp:TextBox>
    </form>
</body>
</html>
