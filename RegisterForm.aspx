<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="LibraryKita.RegisterForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script runat="server">

        void SubmitReg_Click(Object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                message.Text = "Page is Valid.";
            }
            else
            {
                message.Text = "Page is InValid.";
            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin: auto; width: 23%;">
        <table class="border-white text-white">
            <tr>
                <td>Username :
                </td>
                <td>
                    <asp:TextBox ID="Username" runat="server" />
                    <asp:RegularExpressionValidator runat="server" ID="ValUsername"
                        Display="Dynamic"
                        ControlToValidate="Username"
                        ValidationExpression="^[\s\S]{6,15}$"
                        ErrorMessage="Minimum 6 characters and maximum 15 characters allowed.">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Email :
                </td>
                <td>
                    <asp:TextBox ID="Email" runat="server" />
                    <asp:RegularExpressionValidator ID="ValEmail" runat="server"
                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControlToValidate="Email"
                        ErrorMessage="Invalid Email Format">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Password :
                </td>
                <td>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" />
                    <asp:RegularExpressionValidator runat="server" ID="ValPassword"
                        Display="Dynamic"
                        ControlToValidate="Password"
                        ValidationExpression="^[\s\S]{8,}$"
                        ErrorMessage="Minimum 8 characters allowed.">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="SubmitReg" runat="server" Text="Register" OnClick="SubmitReg_Click" />
                </td>
            </tr>
        </table>
        <asp:Label ID="message" runat="server" Visible="false" title="" Text=""></asp:Label>
    </div>
</asp:Content>
