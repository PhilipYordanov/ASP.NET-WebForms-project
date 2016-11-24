<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FIlms.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Контакти</h1>
        <%--<h2>Your contact page.</h2>--%>
    </hgroup>
    <section class="contact">
    </section>
    <section class="contact">
        <style>
            .BydiCherveno {
                color:red
            }
        </style>
         <table>
       <tr>
           <td>Фн</td>
           <td class="BydiCherveno"><b>13118039</b></td>
       </tr>
       <tr>
           <td>Имена</td>
           <td class="BydiCherveno"><b>Филип Йорданов</b></td>
       </tr>
             <tr>
           <td>Специалност</td>
           <td class="BydiCherveno"><b>Бизнес информатика</b></td>
       </tr>
       <tr>
           <td>Поток</td>
           <td class="BydiCherveno"><b>108</b></td>
       </tr>
             <tr>
           <td>Група</td>
           <td class="BydiCherveno"><b>1051</b></td>
       </tr>
            </table>
        <p>
            <span class="label">Поддръжка</span>
            <span><a href="mailto:Support@example.com"><b>unwe@unwe.com</b></a></span>
        </p>
    </section>
    <section class="contact">
    </section>
</asp:Content>