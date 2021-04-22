<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="LibraryKita.RegisterForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="margin:auto ; width:15%;">
        <table class="border-white text-white">
            <tr>
                <td>Username :
                </td>
                <td>
                    <asp:TextBox ID="Username" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Email :
                </td>
                <td>
                    <asp:TextBox ID="Email" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Password :
                </td>
                <td>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="SubmitReg" runat="server" Text="Register" OnClick="SubmitReg_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
