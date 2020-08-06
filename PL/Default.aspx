<%@ Page Title="User Management Module" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PL._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <br />
    <br />
    <div>
        <h1><%: Title %></h1>
    <hr />
    <p class="lead">Welcome, We are pleased to have you using our software module, please select the option you want to start with:</p>
    </div>
    <br />
    <div>
        <div>
            <h2>Register new User Account</h2>
            <p class="lead">Click the button below to start the process of adding a new user.</p>
            <a class="btn btn-primary btn-lg " href="SecurityValidation.aspx">UserRegistration</a>
        </div>
        <br />
        <br />
        <div>
            <h2>Access Control Panel</h2>
            <p class="lead">Tp change configuration options go to Control Panel in the button below.</p>
            <a class="btn btn-primary btn-lg " href="ControlPanel.aspx">Control Panel</a>
        </div>
    </div>
</asp:Content>


