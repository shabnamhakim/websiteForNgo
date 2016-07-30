<%@ Page Language="C#" MasterPageFile="~/SocialWorker.master" AutoEventWireup="true" CodeFile="AddBlog.aspx.cs" Inherits="AddBlog"
    ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
    </style>
</head>
<body>
    <form id="form1" >
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                Title:
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtTitle" runat="server" Width="550" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Body:
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="Submit" />
            </td>
        </tr>
    </table>
    <script type="text/javascript" src="//tinymce.cachefly.net/4.0/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({ selector: 'textarea' });
    </script>
    </form>
</body>
</html>
</asp:content>