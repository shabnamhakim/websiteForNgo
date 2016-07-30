<%@ Page Title="" Language="C#" MasterPageFile="~/SocialWorker.master" AutoEventWireup="true" CodeFile="ListOfNgo's.aspx.cs" Inherits="ListOfNgo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <%-- <asp:Label runat="server" Text="Question"></asp:Label>&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
   <asp:Label runat="server" Text="Option1"></asp:Label>&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />
   <asp:Label runat="server" Text="Option2"></asp:Label>&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br />
    <asp:Label runat="server" Text="Answer"></asp:Label>&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br /><br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="add" /><br /><br />
    <asp:Label ID="Label1" runat="server" ></asp:Label>--%>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="nId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="nId" HeaderText="nId" InsertVisible="False" ReadOnly="True" SortExpression="nId" />
            <asp:TemplateField HeaderText="name" SortExpression="nname">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nname") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("nname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="category" SortExpression="cat">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("cat") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("cat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="contact" SortExpression="cont">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("cont") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("cont") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="emailid" SortExpression="eid">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("eid") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("eid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteForNGO'sConnectionString %>" SelectCommand="SELECT [nId], [nname], [cat], [cont], [eid] FROM [ngo]"></asp:SqlDataSource>
</asp:Content>


