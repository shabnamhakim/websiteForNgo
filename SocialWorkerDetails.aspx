<%@ Page Language="C#" MasterPageFile="~/NGO.master" AutoEventWireup="true" CodeFile="SocialWorkerDetails.aspx.cs" Inherits="SocialWorkerDetails" Title="social worker details" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"></br></br></br>
        <span style="font-size: 24pt; color: #003399; font-family: Monotype Corsiva; text-decoration: underline">Social Worker Details</span>
        <span
            style="font-size: 24pt; color: #003399; font-family: Monotype Corsiva; text-decoration: underline">
            <asp:GridView ID="GridView1" runat="server" Style="z-index: 101; left: 0px; position: absolute;
                top: 354px; height: 194px; width: 984px;" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Size="Medium" Font-Underline="False" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Id">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                    <asp:BoundField DataField="gen" HeaderText="gen" SortExpression="gen" />
                    
                    <asp:BoundField DataField="spec" HeaderText="spec" SortExpression="spec" />
                    <asp:BoundField DataField="ngo" HeaderText="ngo" SortExpression="ngo" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <RowStyle ForeColor="#000066" />
                <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteForNGO'sConnectionString %>" SelectCommand="SELECT [Id], [name], [dob], [gen], [spec], [ngo] FROM [Reg]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteForNGO'sConnectionString %>" SelectCommand="SELECT [name], [gen], [spec], [ngo], [deg], [dob] FROM [Reg]"></asp:SqlDataSource>
    </span>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
  
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
        
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            
            
    
</asp:Content>

