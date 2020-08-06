<%@ Page Title="Control Panel" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ControlPanel.aspx.cs" Inherits="PL.ControlPanel" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
        <h1><%: Title %></h1>
        <hr />
    

    <div>
           
    <br />
    <a class="btn btn-primary" href="Theme.aspx#">Configure Themes</a>
        <p class="lead">Here you will be able to configure setting as an Administrator</p>
    </div>
        <div>
           
    <br />
    <a class="btn btn-primary" href="Catalogue.aspx#">Configure Catalogue</a>
            <p class="lead">Here you will be able to configure setting as an Administrator</p>
    </div>
</asp:Content>
