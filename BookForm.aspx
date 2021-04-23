<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Main.Master" AutoEventWireup="true" CodeBehind="BookForm.aspx.cs" Inherits="LibraryKita.BookForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin: auto; width: 23%;">
        <table class="border-white text-white">
            <tr>
                <td>Book Name :
                </td>
                <td>
                    <asp:TextBox ID="BookName" runat="server" />
            </tr>
            <tr>
                <td>Date :
                </td>
                <td>
                    <asp:TextBox ID="BookDate" runat="server" TextMode="Date"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="SubmitReg" runat="server" Text="Submit" OnClick="SubmitReg_Click" />
                </td>
            </tr>
        </table>
        <asp:Label ID="message" runat="server" Visible="false" title="" Text=""></asp:Label>
    </div>
    <br />
    <div style="margin: auto; width: 15%;">
        <asp:GridView runat="server" AllowPaging="True" CssClass="text-white" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="BukuNama" HeaderText="BukuNama" SortExpression="BukuNama" />
                <asp:BoundField DataField="BukuTanggal" HeaderText="BukuTanggal" SortExpression="BukuTanggal" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryKitaConnectionString %>" SelectCommand="SELECT [BukuNama], [BukuTanggal] FROM [Buku]"></asp:SqlDataSource>

    </div>
</asp:Content>
