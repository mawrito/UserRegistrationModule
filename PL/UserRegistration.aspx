﻿<%@ Page Title="User Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="PL.UserRegistration" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <h1><%: Title %></h1>

    <div style="width:350px">
        <asp:Label class="col-sm-2 col-form-label" Text="First Name" runat="server" />
        <asp:TextBox class="form-control" ID="txtFirstName" onkeypress="return isNotNumber(event);" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Field Required" EnableTheming="True" BorderStyle="None" Font-Bold="True" Font-Italic="True" Display="Dynamic" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />       
        <asp:Label class="col-sm-2 col-form-label" Text="Last Name" runat="server" />
        <asp:TextBox class="form-control" ID="txtLastName" onkeypress="return isNotNumber(event)" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Field Required" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label class="col-sm-2 col-form-label" Text="Last Name" runat="server" />
        <asp:TextBox class="form-control" ID="txtLastName2" onkeypress="return isNotNumber(event)" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLastName2" ErrorMessage="Field Required" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label class="col-sm-2 col-form-label" Text="eMail" runat="server" />
        <asp:TextBox class="form-control" ID="txtEmail" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Field Required" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email format must be *@gmail.com" ValidationExpression="\w+([-+.']\w+)*@gmail.com" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
        <br />
        <asp:Label class="col-sm-2 col-form-label" Text="Age" runat="server" />
        <asp:TextBox class="form-control" ID="txtAge" onkeypress="return isNumber(event)" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAge" ErrorMessage="Field Required" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Age must be between 18 and 99" MaximumValue="99" MinimumValue="18" Font-Bold="True" Font-Italic="True" Font-Size="Smaller"  ForeColor="Red" Display="Dynamic"></asp:RangeValidator>
        <br />
        <asp:Label class="col-sm-2 col-form-label" Text="Country" runat="server" />
        <asp:DropDownList class="form-control" ID="ddlCountry" runat="server" DataSourceID="Countries" DataTextField="CountryName" DataValueField="CountryName"></asp:DropDownList>
        <asp:SqlDataSource ID="Countries" runat="server" ConnectionString="<%$ ConnectionStrings:UserRegistrationConnectionString %>" SelectCommand="SELECT [CountryName] FROM [Countries]"></asp:SqlDataSource>
        <br />
        <asp:Label class="col-sm-2 col-form-label" Text="Username" runat="server" />
        <asp:TextBox class="form-control" ID="txtUsername" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtUsername" ErrorMessage="Field Required" Font-Bold="True" Font-Italic="True" Display="Dynamic" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtUsername" ErrorMessage="Must be 8 Characters!" ValidationExpression="^([a-zA-Z0-9!.@*#]{8,8})$" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Smaller"></asp:RegularExpressionValidator>
        <br />
        <asp:Label class="col-sm-2 col-form-label" Text="Password" runat="server" />
        <asp:TextBox class="form-control" ID="txtPassword" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword" ErrorMessage="Field Required" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Smaller"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="8 Characters: Upper and Lower case, and Symbol required" ValidationExpression="^([a-zA-Z0-9!.@*#]{8,8})$" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        <asp:Label class="col-sm-2 col-form-label" Text="Password Confirmation" runat="server" />
        <asp:TextBox class="form-control" ID="txtConfirmPasword" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtConfirmPasword" ErrorMessage="Field Required" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPasword" ErrorMessage="Password fields must match!" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" ForeColor="Red"></asp:CompareValidator>
        <br />
        <asp:Label class="col-sm-2 col-form-label" Text="Password Expiration" runat="server" />
        <asp:DropDownList class="form-control" ID="ddlExpiration" runat="server">
            <asp:ListItem Value="30"></asp:ListItem>
            <asp:ListItem Value="60"></asp:ListItem>
            <asp:ListItem Value="90"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button Style="font-size: large" class="btn btn-primary btn-lg btn-block" ID="Create" runat="server" Text="Create" Width="133px" OnClick="Create_Click" />
        <asp:Label class="col-sm-2 col-form-label" ID="errorMessage" Text="" runat="server" />
    </div>
</asp:Content>
