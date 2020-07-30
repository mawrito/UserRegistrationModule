<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SecurityValidation.aspx.cs" Inherits="PL.SecurityValidation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/securityValidator.js"></script>
    <h1>Security Validation</h1>
        <p class="lead">Prior to the user registration we need to verify you are a human fpr security purposes, in order to do that, please click 3 images containing:</p>
        <p id="Catalogo"></p>
        <p>Clicks: <a id="clicks">0</a></p>
    <div>
        <table>
            <tr>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/16.jpg" />
                </td>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/12.jpg" />
                </td>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/8.jpg" />
                </td>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/4.jpg" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/15.jpg" />
                </td>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/11.jpg" />
                </td>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/7.jpg" />
                </td>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" onclick="onClick()" src="Content/Catalogues/Dolphins/3.jpg" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" onclick="onClick()" src="Content/Catalogues/Dolphins/2.jpg" />
                </td>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/10.jpg" />
                </td>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/6.jpg" />
                </td>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/14.jpg" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/13.jpg" />
                </td>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/9.jpg" />
                </td>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" onclick="onClick()" src="Content/Catalogues/Dolphins/1.jpg" />
                </td>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/5.jpg" />
                </td>
            </tr>
            <tr>
            </tr>
        </table>
        <br />
        <br />

        <input class="btn btn-primary btn-lg btn-block" style="display: none; font-size:large" id="Create" type="button" onclick="location.href = 'UserRegistration.aspx';" value="Create Account" />

    </div>
</asp:Content>
