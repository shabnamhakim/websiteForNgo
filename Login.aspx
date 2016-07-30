<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Home" Title="Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Style="z-index: 104; left: 7px;
            position: absolute; top: 152px; height: 479px; width: 1372px;" BackImageUrl="~/pictures/img22.jpg">
            &nbsp; &nbsp; &nbsp; 
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Purple" Style="z-index: 100;
                left: 16px; position: absolute; top: 128px" Text="User Type"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 101; left: 88px;
                position: absolute; top: 120px; height: 26px; width: 126px;" >
                 <asp:ListItem>--select--</asp:ListItem>
            
            <asp:ListItem>Social Worker</asp:ListItem>
            <asp:ListItem>NGO</asp:ListItem>
            </asp:DropDownList>
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="font-size: 14pt">&nbsp; <strong><span style="color: background">
            <br></br><br />
                    &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 102; left: 89px; position: absolute;
                        top: 48px; width: 226px;"></asp:TextBox><asp:TextBox ID="TextBox2" runat="server" Style="z-index: 103; left: 88px; position: absolute;
                        top: 88px; width: 231px;" TextMode="Password"></asp:TextBox>
                    &nbsp;
                </span></strong></span>
                <asp:Button ID="Button2" runat="server" Style="z-index: 104; left: 104px; position: absolute;
            top: 176px" Text="Login" Width="64px" OnClick="Button2_Click" />
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Monotype Corsiva"
            Font-Size="X-Large" ForeColor="Indigo" Style="z-index: 105; left: 114px; position: absolute;
            top: 232px; height: 23px; width: 121px;" OnClick="LinkButton1_Click">Register</asp:LinkButton>
        &nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Monotype Corsiva"
            Font-Size="X-Large" ForeColor="CornflowerBlue" Style="z-index: 106; left: 0px;
            position: absolute; top: 208px" Text="New User ?" Width="120px" Height="1px"></asp:Label>
        &nbsp; &nbsp;&nbsp;
         <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Indigo" Style="z-index: 107;
            left: 10px; position: absolute; top: 47px" Text="User Id"></asp:Label>
            &nbsp;
             <asp:Label ID="Label1" runat="server" Style="z-index: 108; left: 8px; position: absolute;
            top: 88px" Text="Password" Font-Bold="True" ForeColor="Indigo"></asp:Label>
            &nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Monotype Corsiva"
                ForeColor="Purple" Height="16px" Style="z-index: 109; left: 8px; position: absolute;
                top: 272px" Width="112px" OnClick="LinkButton2_Click">Forgot Password</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Monotype Corsiva"
                ForeColor="Purple" Style="z-index: 111; left: 128px; position: absolute;
                top: 271px; height: 35px;" Width="112px" OnClick="LinkButton3_Click">change Password</asp:LinkButton>
        </asp:Panel>
        
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
    <br />
</asp:Content>

