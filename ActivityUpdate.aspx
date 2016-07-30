<%@ Page Title="" Language="C#" MasterPageFile="~/NGO.master" AutoEventWireup="true" CodeFile="ActivityUpdate.aspx.cs" Inherits="ActivityUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"></br></br></br></br>
    <asp:Label ID="Label1" runat="server" Text="Activity"></asp:Label>
   
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></br></br>
     <asp:Label ID="Label2" runat="server" Text="Venue"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></br></br>
    <asp:Label ID="Label3" runat="server" Text="Time"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></br></br>
    <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" />
    </br></br>
    check your schedule and add your activities

<asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
</asp:Content>