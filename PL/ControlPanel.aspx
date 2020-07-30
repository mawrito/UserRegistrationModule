<%@ Page Title="Control Panel" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ControlPanel.aspx.cs" Inherits="PL.ControlPanel" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1><%: Title %></h1>
        <hr />
    </div>
    <p class="lead">Here you will be able to configure setting as an Administrator</p>
    <br />
    <div>
        <h2>Change Application Theme</h2>
        <label for="Themes">Choose a Theme:</label>
        <select name="Themes" id="Themes" onchange="changeBg()">
            <option value="#cc8d3b">Orange</option>
            <option value="#446faf">Blue</option>
            <option value="#21a89d">Teal</option>
        </select>
        <a onclick="setStyleSheet('Content/United.css')" href="#">Style 1</a>
        <a onclick="setStyleSheet('Content/Lux.css')" href="#">Style 2</a>
        <br />
        <a onclick="replacejscssfile('Content/United.css', 'Content/Lux.css', 'css')" href="#">Style 3</a>
        <a onclick="replacejscssfile('Content/Lux.css', 'Content/United.css', 'css')" href="#">Style 4</a>


        <button class="btn btn-primary">Apply</button>
    </div>

    <br />
    <br />
    <br />
    <div>
        <h2>Change Application Security Catalogue</h2>
        <label for="Catalogues">Choose a Catalogue:</label>
        <select name="Catalogues" id="Catalogues">
            <option value="Dolphins">Dolphins</option>
            <option value="Plants">Plants</option>
            <option value="Food">Food</option>
        </select>

        <button class="btn btn-primary">Apply</button>
    </div>
</asp:Content>
