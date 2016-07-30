<%@ Page Title="Donate" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Donate.aspx.cs" Inherits="Donate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
    </br></br>NGO's Listed Under our Website:
    <asp:GridView ID="GridView1" runat="server" Width="436px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="nId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="nname" HeaderText="nname" SortExpression="nname" />
            <asp:BoundField DataField="eid" HeaderText="eid" SortExpression="eid" />
            <asp:BoundField DataField="cat" HeaderText="cat" SortExpression="cat" />
            <asp:BoundField DataField="cont" HeaderText="cont" SortExpression="cont" />
            <asp:BoundField DataField="nId" HeaderText="nId" InsertVisible="False" ReadOnly="True" SortExpression="nId" />
        </Columns>
    </asp:GridView></br></br>
    <asp:Button ID="Button1" runat="server" Text="Donate" OnClick="Button1_Click" />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteForNGO'sConnectionString %>" SelectCommand="SELECT [nname], [eid], [cat], [cont], [nId] FROM [ngo]"></asp:SqlDataSource>
</asp:Content>

