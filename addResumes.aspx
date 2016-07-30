<%@ Page Language="C#" AutoEventWireup="true" enableEventValidation ="false" MasterPageFile="~/SocialWorker.master" CodeFile="addResumes.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<title>Upload Word Files to Database and Download files from database in asp.net
</title>
</head>
<body>
<form id="form1" >
<div>
<asp:FileUpload ID="fileUpload1" runat="server" /></br></br>give short description to make your profile stand out:</br></br>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
<asp:Button ID="btnUpload" runat="server" Text="Upload" onclick="btnUpload_Click" />
    <br />
</div>
<div>
<asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False" DataKeyNames="Id">
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
<Columns>
<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
<asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
    
    <asp:BoundField DataField="Descr" HeaderText="Desc"/>
    <asp:TemplateField HeaderText="FilePath">
<ItemTemplate>
<asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="lnkDownload_Click"></asp:LinkButton>
</ItemTemplate></asp:TemplateField>
</Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteForNGO'sConnectionString %>" SelectCommand="SELECT [Id], [Name], [Descr] FROM [FileInformation]"></asp:SqlDataSource>
</div>
</form>
</body>
</html>

    </asp:Content>