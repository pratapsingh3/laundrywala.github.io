<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
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

    <!-- Contact Information -->
    <div>
        <div class="greybg ">
		    <div class="container py-5">
			    <div class="row pb-4">
				    <div class="col-xl-6">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3578.63510867654!2d73.01480961744382!3d26.24104329999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39418c7554c1c997%3A0xcf2cf5ff1e5aa3db!2sJai%20Narayan%20Vyas%20University%20New%20Campus!5e0!3m2!1sen!2sin!4v1616960284934!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                    </div>
				    <div class="col-xl-5 bg-white mx-3 py-4 px-3">
					    <p class="font-weight-bold text-grey"><b>Address</b></p>
					    <p class="text-pink"><b>203 Fake St. Mountain View, Jodhpur, Rajasthan,<br /> INDIA</b></p>
					    <p class="font-weight-bold text-grey"><b>Phone</b></p>
					    <p><a href="" class="text-pink text-decoration-none">+91987654310</a></p>
					    <p class="font-weight-bold text-grey"><b>Email Address</b></p>
					    <p><a href="" class="text-pink text-decoration-none">youremail@domain.com</a></p>
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
