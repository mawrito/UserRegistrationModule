<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Theme.aspx.cs" Inherits="PL.Theme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div>
        <h2>Change Application Theme</h2>
        <p>Choose any of the following GUI Themes to be applied to your application</p>
        <br />
        <br />
        <hr />
        <button class="theme"><a href="#" onclick="setActiveStyleSheet('Lux')">DeLux</a> </button>
        <button class="theme"><a href="#" onclick="setActiveStyleSheet('Pulse')">Pulse </a></button>
        <button class="theme"><a href="#" onclick="setActiveStyleSheet('United')">United</a></button>
        
        
        <hr />
        <br />
        <br />

    </div>
</asp:Content>
