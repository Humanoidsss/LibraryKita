<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="LibraryKita.MasterPages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center bg-dark">
        <h1 class="align-content-center font-weight-bold text-white">Selamat Datang di Library Kita!</h1>

        <img src="Images/Library.jpg" alt="Alternate Text" class="img-fluid" />

        <br/>
        <asp:Button runat="server" ID="LoginButton" CssClass="mr-auto" Text="Login" OnClick="LoginButton_Click"/>
        <asp:Button runat="server" ID="RegisterButton" Text="Register" OnClick="RegisterButton_Click"/>
    </div>
</asp:Content>
