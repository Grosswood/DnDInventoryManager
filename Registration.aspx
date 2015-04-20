<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 298px;
            text-align: right;
        }
        .auto-style3 {
            width: 186px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="TextBoxName" ErrorMessage="Field must be filled" ForeColor="#3333CC"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Field must be filled" ForeColor="#3333CC"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm pass</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxConfPass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass2" runat="server" ControlToValidate="TextBoxConfPass" ErrorMessage="Field must be filled" ForeColor="#3333CC"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorPass" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxConfPass" ErrorMessage="Password not match" ForeColor="#3333CC"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Your role</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownListRole" runat="server">
                        <asp:ListItem>Select role</asp:ListItem>
                        <asp:ListItem>Player</asp:ListItem>
                        <asp:ListItem>Master</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorRole" runat="server" ControlToValidate="DropDownListRole" ErrorMessage="Role must be chosen" ForeColor="#3333CC" InitialValue="Select role"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Hero name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxHeroName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorHeroName" runat="server" ControlToValidate="TextBoxHeroName" ErrorMessage="Field must be filled" ForeColor="#3333CC"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Select group</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownListGroupSelect" runat="server">
                        <asp:ListItem>Select group</asp:ListItem>
                        <asp:ListItem>DnD 5</asp:ListItem>
                        <asp:ListItem>Cyberpunk</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorGroup" runat="server" ControlToValidate="DropDownListGroupSelect" ErrorMessage="Group must be chosen" ForeColor="#3333CC" InitialValue="Select group"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" />
                    <input id="Reset1" type="reset" value="Reset" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
