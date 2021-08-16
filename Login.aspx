<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    <link href="StyleSheet.css" type="text/css" rel="stylesheet"/>
	<link href="fontawesome-free-5.15.2-web/css/all.css" type="text/css" rel="stylesheet">
	<link href="bootstrap-5.0.0-beta2-dist/css/bootstrap.css" type="text/css" rel="stylesheet"/>
	<link href="img/logo.png" type="img/ico" rel="icon"/>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="greybg">
        <div class="row">
            <div class="col-xl-6">
                <div class="log ">
                    <h1 class="text-white py-5 text-center">LOG IN</h1>
                    <div class="signmarg"> 
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Email ID" class="rounded-pill py-2 signinp px-4 mt-3 mb-3"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox2" runat="server" type="password" placeholder="Enter Password" class="rounded-pill py-2 signinp px-4 mb-2"></asp:TextBox><br />
                    </div>
                    <div class="text-center">
                        <asp:Button ID="Button2" runat="server" Text="Log In" 
                            class="rounded-pill signbtn py-2 border-0 mt-3" onclick="Button2_Click"  /><br />
                        <a href="Registration.aspx" class="text-white">Create an Account</a><br />
                        <hr class="text-white"/>
                        <div class="text-white pb-5 pt-3">
                            Or Login with 
                            <a href="https://www.fb.com" class="text-decoration-none text-white"><label><i class="fab fa-facebook"></i></label></a>
                            <a href="https://www.twitter.com" class="text-decoration-none text-white"><label><i class="fab fa-twitter"></i></label></a>
                            <a href="https://www.google.com" class="text-decoration-none text-white"><label><i class="fab fa-google"></i></label></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-6 ban">
                <div class="">
                   
                </div>
            </div>
        </div>
    </div>

    </form>
</body>
</html>
