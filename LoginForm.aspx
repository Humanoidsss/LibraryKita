<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="LibraryKita.MasterPages.WebForm2" %>

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
                <td>Password :
                </td>
                <td>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="SubmitLgn" runat="server" Text="Login" OnClick="SubmitLgn_Click" />
                </td>
            </tr>
        </table>

        <asp:Label id="message" runat="server" visible="false" title="" Text=""></asp:Label>
    </div>
</asp:Content>
