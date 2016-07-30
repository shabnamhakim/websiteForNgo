<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title>Home</title>
</head>
<body>
    
   
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Timer ID="Timer1" runat="server" Interval="6000" ontick="Timer1_Tick">
    </asp:Timer>
    <asp:Image ID="Image1" runat="server" Height="200px" Width="300px" />
    
    </br>
            <span style="font-family:'Curlz MT';color:rosybrown;font-size:24pt">
                   <h3>THE BANYAN TREE FOUNDATION </h3>
            We have only verified NGO's from across the country .You will be hassel free and if they are untrusted, we will take the blame.
            So please dont hesitate just Donate.</span>


</body>
</html>
    
</asp:content>
