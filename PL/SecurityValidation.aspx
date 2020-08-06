<%@ Page Title="Security Validation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SecurityValidation.aspx.cs" Inherits="PL.SecurityValidation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/securityValidator.js"></script>
    <br />
    <br />
    <h1><%: Title %></h1>
        <p class="lead">Prior to the user registration for security purposes, we need to verify you are a human. In order to do that, please click 3 images containing:</p>
        <p id="Catalogo"></p>
        <p style="display:none">Clicks: <a id="clicks">0</a></p>
    <div >
        <table>
            <tr>
                <td style="width: 100px">
                    <img id="4" style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/4.jpg" />
                </td>
                <td style="width: 100px">
                    <img id="5" style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/5.jpg" />
                </td>
                <td style="width: 100px">
                    <img id="3" style="width: 100px; height: 100px;" onclick="onClick()" src="Content/Catalogues/Dolphins/3.jpg" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <img id="2" style="width: 100px; height: 100px;" onclick="onClick()" src="Content/Catalogues/Dolphins/2.jpg" />
                </td>
                <td style="width: 100px">
                    <img  id="7" style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/7.jpg" />
                </td>
                <td style="width: 100px">
                    <img  id="6" style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/6.jpg" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <img  id="8" style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/8.jpg" />
                </td>
                <td style="width: 100px">
                    <img  id="9" style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/9.jpg" />
                </td>
                <td style="width: 100px">
                    <img  id="1" style="width: 100px; height: 100px;" onclick="onClick()" src="Content/Catalogues/Dolphins/1.jpg" />
                </td>
            </tr>
            <tr>
            </tr>
        </table>
        <br />
        <br />

        <input class="btn btn-primary" style="display: none; font-size:large" id="Create" type="button" onclick="location.href = 'UserRegistration.aspx';" value="Create Account" />

    </div>

   
</asp:Content>
