<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order Placed.aspx.cs" Inherits="Order_Placed" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Placed</title>
    <link href="StyleSheet.css" type="text/css" rel="stylesheet"/>
	<link href="fontawesome-free-5.15.2-web/css/all.css" type="text/css" rel="stylesheet">
	<link href="bootstrap-5.0.0-beta2-dist/css/bootstrap.css" type="text/css" rel="stylesheet"/>
	<link href="img/logo.png" type="img/ico" rel="icon"/>
</head>
<body class="opbg">
    <form id="form1" runat="server">
    <div class="opbg text-center">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/OrderPlaced.gif" /><br />
        <asp:Label ID="Label1" runat="server" Text="ORDER PLACED SUCCESSFULLY" class="text-purple"></asp:Label><br />
        <asp:Button ID="Button1" runat="server" Text="CONTINUE" 
            class="border-0 text-white pinkbg mt-4" onclick="Button1_Click"/>
    </div>
    </form>
</body>
</html>
