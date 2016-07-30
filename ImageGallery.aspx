<%@ Page Title="" Language="C#" MasterPageFile="~/NGO.master" AutoEventWireup="true" CodeFile="ImageGallery.aspx.cs" Inherits="ImageGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    </br></br></br></br></br></br><asp:FileUpload ID="FileUpload1" runat="server" Height="29px" style="margin-left: 703px" Width="285px" />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="upload" Height="26px" style="margin-left: 700px" Width="290px" />
    <asp:Panel ID="Panel1" runat="server" BorderColor="#FF0066" BorderStyle="Solid" Width="440px">
    </asp:Panel>
</asp:Content>

