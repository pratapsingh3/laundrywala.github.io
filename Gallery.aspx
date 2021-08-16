<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gallery</title>
    <link href="StyleSheet.css" type="text/css" rel="stylesheet"/>
	<link href="fontawesome-free-5.15.2-web/css/all.css" type="text/css" rel="stylesheet"/>
	<link href="bootstrap-5.0.0-beta2-dist/css/bootstrap.css" type="text/css" rel="stylesheet"/>
	<link href="img/logo.png" type="img/ico" rel="icon"/>
</head>
<body>
    <form id="form1" runat="server">
    
        <!-- Header -->
        <div class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
             <div class="col-xl-3">
                 <asp:Image ID="Image1" runat="server" ImageUrl="~/img/logo1.png" alt="Website Logo" class="w-10" />
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

        <!-- Gallery -->
        <div class="container">
            <table class="mt-4">
                <tr>
                    <td class="w-75">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/img/camera.png" class="w-100"/>
                    </td>
                    <td class="pinkbg w-25 p-4">
                        <h1 class="text-white">Gallery</h1>
                        <i class="fas fa-caret-left gal-arrow text-pink"></i>
                        <p align="justify" class="text-white">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                        <a href="#one" class="text-white text-decoration-none">
                            <b>View Gallery<i class="fas fa-long-arrow-alt-right"></i></b>
                        </a>
                    </td>
                </tr>
            </table>
            <div id="one">
                <asp:Panel ID="Panel1" runat="server" class="mt-4">
                    <!--Row 1-->
                    <div class="row mb-4">
                        <div class="col-xl-6">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/img/pic3.png" class="w-100"/>
                        </div>
                         <div class="col-xl-6">
                            <div class="row">
                                <div class="col-xl-6">
                                    <asp:Image ID="Image4" runat="server" ImageUrl="~/img/pic4.png" class="w-100 gal-pic1"/>
                                 </div>
                                 <div class="col-xl-6">
                                     <asp:Image ID="Image5" runat="server" ImageUrl="~/img/pic5.png" class="w-100 gal-pic1"/>
                                 </div>
                            </div>
                        </div>
                    </div>

                    <!--Row 2-->
                    <div class="row mb-4">
                        <div class="col-xl-6">
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/img/pic1.png" class="w-100"/>
                        </div>
                        <div class="col-xl-6">
                            <div>
                                <asp:Image ID="Image7" runat="server" ImageUrl="~/img/pic6.png" class="w-100 gal-pic1"/>
                            </div>
                            <div class="row mt-4">
                                <div class="col-xl-6">
                                    <asp:Image ID="Image8" runat="server" ImageUrl="~/img/pic8.png" class="w-100 gal-pic1"/>
                                </div>
                                <div class="col-xl-6">
                                    <asp:Image ID="Image9" runat="server" ImageUrl="~/img/pic7.png" class="w-100 gal-pic1"/>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Row3-->
                    <div class="row mb-4">
                        <div class="col-xl-6">
                            <asp:Image ID="Image10" runat="server" ImageUrl="~/img/pic9.png" class="w-100 gal-pic1"/>
                        </div>
                        <div class="col-xl-6">
                            <asp:Image ID="Image11" runat="server" ImageUrl="~/img/pic10.png" class="w-100 gal-pic1"/>
                        </div>
                    </div>
                </asp:Panel>
                <div class="text-center">
                    <asp:Button ID="Button1" runat="server" Text="View More" 
                        class="text-white border-0 pinkbg" onclick="Button1_Click"/>
                </div>

                <div>
                    <div class="row mb-4">
                        <div class="col-xl-6">
                            <div class="row mb-4">
                                <div class="col-xl-6 ">
                                    <asp:Image ID="Image12" runat="server" ImageUrl="~/img/pic11.png" class="w-100 gal-pic1 mb-2 "/>
                                </div>
                                <div class="col-xl-6">
                                    <asp:Image ID="Image13" runat="server" ImageUrl="~/img/pic12.png" class="w-100 gal-pic1"/>
                                </div>
                            </div>
                            <div>
                                <asp:Image ID="Image14" runat="server" ImageUrl="~/img/pic13.png" class="w-100 gal-pic1"/>
                            </div>
                        </div>
                        <div class="col-xl-6">
                            <asp:Image ID="Image15" runat="server" ImageUrl="~/img/pic2.png" class="w-100"/>
                        </div>
                    </div>
                </div>

            </div>
        </div>
         <!-- footer -->
        <div class="coprights">
		    <div class="container py-3">
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
