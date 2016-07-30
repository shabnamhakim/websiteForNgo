<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewActivity.aspx.cs" Inherits="StudentHome" Title="Ngo home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="255px">
    <EditItemTemplate>
        Id:
        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
        <br />
        Activity:
        <asp:TextBox ID="ActivityTextBox" runat="server" Text='<%# Bind("Activity") %>' />
        <br />
        Venue:
        <asp:TextBox ID="VenueTextBox" runat="server" Text='<%# Bind("Venue") %>' />
        <br />
        DateTime:
        <asp:TextBox ID="DateTimeTextBox" runat="server" Text='<%# Bind("DateTime") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        Activity:
        <asp:TextBox ID="ActivityTextBox" runat="server" Text='<%# Bind("Activity") %>' />
        <br />
        Venue:
        <asp:TextBox ID="VenueTextBox" runat="server" Text='<%# Bind("Venue") %>' />
        <br />
        DateTime:
        <asp:TextBox ID="DateTimeTextBox" runat="server" Text='<%# Bind("DateTime") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        
        <br />
        Activity:
        <asp:Label ID="ActivityLabel" runat="server" Text='<%# Bind("Activity") %>' />
        <br />
        Venue:
        <asp:Label ID="VenueLabel" runat="server" Text='<%# Bind("Venue") %>' />
        <br />
        DateTime:
        <asp:Label ID="DateTimeLabel" runat="server" Text='<%# Bind("DateTime") %>' />
        <br />
    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteForNGO'sConnectionString %>" SelectCommand="SELECT * FROM [Activity]"></asp:SqlDataSource>
</asp:Content>

