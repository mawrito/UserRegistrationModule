<%@ Page Title="UserRegistration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="PL.UserRegistration" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <table>
            <tr>
                <td colspan="4">
                    <h3>User  Infomation:</h3>
                </td>
            </tr>
            <tr>
                <td style="width: 121px">
                    <asp:Label Text="First Name" runat="server" />
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtFirstName" onkeypress="return isNotNumber(event)" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 121px">
                    <asp:Label Text="Last Name" runat="server" />
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtLastName" onkeypress="return isNotNumber(event)" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 121px">
                    <asp:Label Text="Last Name" runat="server" />
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtLastName2" onkeypress="return isNotNumber(event)" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLastName2" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 121px">
                    <asp:Label Text="eMail" runat="server" />
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtEmail" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email format must be *@gmail.com" ValidationExpression="\w+([-+.']\w+)*@gmail.com"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 121px">
                    <asp:Label Text="Age" runat="server" />
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtAge" onkeypress="return isNumber(event)" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAge" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Age must be between 18 and 99" MaximumValue="99" MinimumValue="18"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 121px">
                    <asp:Label Text="Country" runat="server" />
                </td>
                <td colspan="2">
                    <asp:DropDownList ID="ddlCountry" runat="server" DataSourceID="Countries" DataTextField="CountryName" DataValueField="CountryName"></asp:DropDownList>

                    <asp:SqlDataSource ID="Countries" runat="server" ConnectionString="<%$ ConnectionStrings:UserRegistrationConnectionString %>" SelectCommand="SELECT [CountryName] FROM [Countries]"></asp:SqlDataSource>

                </td>
            </tr>
            <tr>
                <td colspan="3"></td>
            </tr>
            <tr>
                <td style="width: 121px">
                    <asp:Label Text="Username" runat="server" />
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtUsername" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtUsername" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtUsername" ErrorMessage="Must be 8 Characters!" ValidationExpression="^([a-zA-Z0-9!.@*#]{8,8})$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 121px">
                    <asp:Label Text="Password" runat="server" />
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="8 Characters: Upper and Lower case, and Symbol required" ValidationExpression="^([a-zA-Z0-9!.@*#]{8,8})$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 121px">
                    <asp:Label Text="Confirm Password" runat="server" />
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtConfirmPasword" runat="server" TextMode="Password" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtConfirmPasword" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPasword" ErrorMessage="Password fields must match!"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 121px">
                    <asp:Label Text="Expiration" runat="server" />
                </td>
                <td colspan="2">
                    <asp:DropDownList ID="ddlExpiration" runat="server">
                        <asp:ListItem Value="30"></asp:ListItem>
                        <asp:ListItem Value="60"></asp:ListItem>
                        <asp:ListItem Value="90"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>



        </table>

        <table>
            <tr>

                <td colspan="3">
                    <h3>Security Validation</h3>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    
                    <button id="image1" runat="server" OnClick="cleanFields" style="width: 100px; height: 100px;"><img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/16.jpg"/></button>
                    
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
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/3.jpg" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/14.jpg" />
                </td>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/10.jpg" />
                </td>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/6.jpg" />
                </td>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/2.jpg" />
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
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/5.jpg" />
                </td>
                <td style="width: 100px">
                    <img style="width: 100px; height: 100px;" src="Content/Catalogues/Dolphins/1.jpg" />
                </td>
            </tr>

        </table>

        <table>
            <tr>
                <h3>Submission</h3>
            </tr>
            <tr>
                <td style="width: 101px"></td>
                <td colspan="4">
                    <asp:Button ID="Create" runat="server" Text="Create" Width="133px" OnClick="Create_Click" />
                </td>
            </tr>
            <tr>

                <td colspan="4">
                    <asp:Label ID="errorMessage" Text="" runat="server" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
