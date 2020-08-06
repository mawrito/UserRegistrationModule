<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Catalogue.aspx.cs" Inherits="PL.Catalogue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Change Application Security Catalogue</h1>
        <p class="lead">Select the radio buttons to choose either from the defaault image catalogues or opload your own as a custom one</p>

        <button onclick="showCatalogue('default','custom')">Default</button>
        <button onclick="showCatalogue('custom','default')">Custom</button>
        
    
        <div id="default" >
            <label for="Catalogues">Choose a Catalogue from the default list:</label>
            <select name="Catalogues" id="Catalogues">
                <option value="Dolphins">Dolphins</option>
                <option value="Plants">Plants</option>
                <option value="Food">Food</option>
            </select>
            <button class="btn btn-primary">Apply</button>
            
        </div>
        <br /><br /><br />
        <hr />
        <br /><br /><br />
        <div id="custom" >
            <label>Upload  images to create your own catalogue:</label>
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
            <asp:FileUpload ID="FileUpload2" runat="server" /><br />
            <asp:FileUpload ID="FileUpload3" runat="server" /><br />
            <asp:FileUpload ID="FileUpload4" runat="server" /><br />
            <asp:FileUpload ID="FileUpload5" runat="server" /><br />
            <asp:FileUpload ID="FileUpload6" runat="server" /><br />
            <asp:FileUpload ID="FileUpload7" runat="server" /><br />
            <asp:FileUpload ID="FileUpload8" runat="server" /><br />
            <asp:FileUpload ID="FileUpload9" runat="server" /><br />
            <br />
            <button class="btn btn-primary">Apply</button>
        </div>

    </div>
    <div>
        <label for="Catalogues">Choose a Catalogue from the default list:</label>
    </div>
</asp:Content>
