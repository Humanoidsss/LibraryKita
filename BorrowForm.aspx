﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="BorrowForm.aspx.cs" Inherits="LibraryKita.BorrowForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin: auto; width: 23%;">
        <table class="border-white text-white">
            <tr>
                <td>Book
                </td>
                <td>
                    <asp:CheckBoxList  id="CheckListBuku" runat="server" DataSourceID="SqlDataSource1" DataTextField="BukuNama" DataValueField="BukuNama">
                    </asp:CheckBoxList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryKitaConnectionString %>" SelectCommand="SELECT [BukuNama] FROM [Buku]"></asp:SqlDataSource>
            </tr>
            <tr>
                <td>Return Date :
                </td>
                <td>
                    <asp:TextBox ID="ReturnDate" runat="server" TextMode="Date"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="SubmitOrder" runat="server" Text="Submit" OnClick="SubmitOrder_Click"    />
                </td>
            </tr>
        </table>
        <asp:Label ID="message" runat="server" Visible="false" title="" Text=""></asp:Label>
    </div>

</asp:Content>
