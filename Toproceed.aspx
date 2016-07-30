<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Toproceed.aspx.cs" Inherits="Toproceed" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" BackColor="Thistle" Style="z-index: 100;
            left: 8px; position: absolute; top: 8px; height: 690px; width: 1743px;">
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Monotype Corsiva"
            Font-Size="X-Large" ForeColor="DarkGoldenrod" Style="z-index: 100; left: 352px;
            position: absolute; top: 40px" Text="Authenticated" Width="144px"></asp:Label>
        <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Style="z-index: 101;
            left: 352px; position: absolute; top: 232px" Text="Click To Proceed" Width="150px" />
            &nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Monotype Corsiva"
                Font-Size="X-Large" ForeColor="Maroon" Style="z-index: 103; left: 352px; position: absolute;
                top: 144px" Text="WELCOME" Width="64px"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    </asp:Panel>
    </div>
    </form>
</body>
</html>
