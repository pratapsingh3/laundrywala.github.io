<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Privacy Policy.aspx.cs" Inherits="Privacy_Policy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Privacy Policy</title>
    <link href="StyleSheet.css" type="text/css" rel="stylesheet"/>
	<link href="fontawesome-free-5.15.2-web/css/all.css" type="text/css" rel="stylesheet">
	<link href="bootstrap-5.0.0-beta2-dist/css/bootstrap.css" type="text/css" rel="stylesheet"/>
	<link href="img/logo.png" type="img/ico" rel="icon"/>
</head>
<body>
    <form id="form1" runat="server">
   
    <!-- Header -->
        <div class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
             <div class="col-xl-3">
                 <asp:Image ID="Image2" runat="server" ImageUrl="~/img/logo1.png" alt="Website Logo" class="w-10" />
             </div>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-lg-0">
                    <li class="nav-item  mt-3">
                          <h4><a class="text-decoration-none text-pink active" aria-current="page" href="Home.aspx">Home</a></h4>
                    </li>
                    <li class="nav-item mx-4 mt-3">
                        <h4><a class="text-decoration-none text-pink active" aria-current="page" href="Gallery.aspx">Gallery</a></h4>
                    </li>
                    <li class="nav-item mt-3">
                        <h4><a class="text-decoration-none text-pink active" aria-current="page" href="Privacy Policy.aspx">Privacy Policy</a></h4>
                    </li>
                    <li class="nav-item mx-4 mt-3">
                        <h4><a class="text-decoration-none text-pink active" aria-current="page" href="ContactUs.aspx">Contact Us</a></h4>
                    </li>
                    <li class="nav-item dropdown mt-3">
                        <a class="text-decoration-none text-pink dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <h4>Account</h4>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li>
                                <a class="dropdown-item" href="#">
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                </a>
                            </li>
                            <li><a class="dropdown-item" href="#">My Profile</a></li>
                            <li><hr class="dropdown-divider" /></li>
                            <li>
                                <asp:Button ID="Button17" runat="server" Text="Log Out" onclick="Button17_Click" class="greybg border-0 "/>
                            </li>
                         </ul>
                    </li>
                    <li class="mt-3">
                        <h4>
                            <a href="Cart.aspx" class="text-decoration-none">
                                
                                <asp:Label ID="Label2" runat="server" class="cart"><i class="fas fa-shopping-cart text-pink"></i></asp:Label>
                                <asp:Label ID="Label3" runat="server" class="text-pink" Text="Cart"></asp:Label>
                                <asp:Label ID="Label4" runat="server" class="text-pink" Text=""></asp:Label>
                            </a>
                        </h4>
                    </li>
                 </ul>
             </div>
        </div>
    </div>

        <!-- Privacy Policy -->
        <div class="text-center text-secondary pb-5 mb-5">
		    <h2 class="mt-5 mb-3">Laundry Wala - Privacy Policy</h2>
		    <div class="container">
			    <hr>
			    <div style="text-align: justify;">
				    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			    </div>
			    <div style="text-align: justify;">
				    <h4 class="mt-4">Google</h4>
				    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			    </div>
			    <div style="text-align: justify;">
				    <h4 class="mt-4">Copyrights Policy</h4>
				    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			    </div>
			    <div style="text-align: justify;">
				    <h4 class="mt-4">Changes to this Privacy Policy</h4>
				    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			    </div>
		    </div>
	    </div>

        <!-- footer -->
        <div class="coprights fixed-bottom">
		    <div class="container py-3 ">
			    <div class="t4Left">
				    &copy; Copyright 2021 laundrywala.com
			    </div>
			    <div class="t4Right">
				    Copyright 2021 laundrywala.com 
			    </div>
			    <div class="t4Clear"></div>
		    </div>
        </div>

    </form>
</body>
</html>
