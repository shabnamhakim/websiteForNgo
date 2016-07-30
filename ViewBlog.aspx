<%@ Page Title="View Blog" Language="C#" MasterPageFile="~/NGO.master" AutoEventWireup="true" CodeFile="ViewBlog.aspx.cs" Inherits="ViewBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    </br></br></br></br></br>
    <asp:Repeater ID="rptPages" runat="server">
        <ItemTemplate>
            <%# Container.ItemIndex + 1 %>
            <asp:HyperLink NavigateUrl='<%# string.Format("~/Blogs/{0}/{1}.aspx", Eval("BlogId"), Eval("Slug")) %>' Text='<%# Eval("Title") %>'
                runat="server" />
        </ItemTemplate>
        <SeparatorTemplate>
            <br />
        </SeparatorTemplate>
    </asp:Repeater>
</asp:Content>

