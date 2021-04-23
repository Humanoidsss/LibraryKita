<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="LibraryKita.MasterPages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center bg-dark">
        <asp:Label ID="LandingText" runat="server" Text="Welcome to Library Kita!" CssClass="text-white-50"></asp:Label>
        <br />
        <img src="Images/Library.jpg" alt="Alternate Text" class="img-fluid" />

        <br/>
        <asp:Button runat="server" Visible="true" ID="LoginButton" CssClass="mr-auto" Text="Login" OnClick="LoginButton_Click"/>
        <asp:Button runat="server" visible="true" ID="RegisterButton" Text="Register" OnClick="RegisterButton_Click"/>

        <br />

        <asp:Button runat="server" Visible="false" ID="BorrowButton" CssClass="mr-auto" Text="Borrow Book" OnClick="BorrowButton_Click" />
        <asp:Button runat="server" visible="false" ID="ReturnButton" Text="Return Book" OnClick="ReturnButton_Click"/>
    </div>
</asp:Content>
