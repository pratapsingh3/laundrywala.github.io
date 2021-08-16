<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Laundry Wala</title>
    <link href="StyleSheet.css" type="text/css" rel="stylesheet"/>
	<link href="fontawesome-free-5.15.2-web/css/all.css" type="text/css" rel="stylesheet">
	<link href="bootstrap-5.0.0-beta2-dist/css/bootstrap.css" type="text/css" rel="stylesheet"/>
	<link href="img/logo.png" type="img/ico" rel="icon"/>
	<script src="bootstrap-5.0.0-beta2-dist/js/bootstrap.min.js" type="text/javascript"></script>
    <style type="text/css">  
            .background
            {
                background-color: Black;
                filter: alpha(opacity=90);
                opacity: 0.8;
                }
     </style>
</head>
<body>
    <form id="form1" runat="server">
    
        <!-- Header -->
    <div class="greybg fixed-top border-bottom">
        <div class="container">
            <div class="row">
                <div class="col-xl-3">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/logo1.png" alt="Website Logo" class="w-10" />
                </div>
                <div class="col-xl mt-4 ml-5">
                    <ul class="list-inline mt-3 pl-5">
						<li class="list-inline-item  mt-2">
							<h4><a href="#one" class=" text-decoration-none text-pink">Home</a></h4>
						</li>
						<li class="list-inline-item mx-3">
							<h4><a href="#two" class=" text-decoration-none text-pink">Team</a></h4>
						</li>
						<li class="list-inline-item">
							<h4><a href="#three" class=" text-decoration-none text-pink">About Us</a></h4>
						</li>
						<li class="list-inline-item mx-3">
							<h4><a href="#four" class=" text-decoration-none text-pink">Service</a></h4>
						</li>
						<li class="list-inline-item">
							<h4><a href="#five" class=" text-decoration-none text-pink">Approch</a></h4>
						</li>
						<li class="list-inline-item mx-3">
							<h4><a href="#six" class=" text-decoration-none text-pink">Contact Us</a></h4>
						</li>
					</ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Banner -->
    <div id="one" class="banner">

    </div>

    <!-- Signup -->
    <div class="banbox text-white text-center pt-5">
        <h1>NEW USER !</h1>
		<p class="pt-4">
			Sign Up Today get 25% OFF <br />
			on your First order
		</p>
        <asp:Button ID="Button1" runat="server" Text="SIGN UP" 
            class="rounded-pill border-0 text-white purplebg" onclick="Button1_Click"/>
        <asp:Button ID="Button11" runat="server" Text="Button" 
            onclick="Button11_Click" />
    </div>

    <!-- Professional Worker -->
    <div id="two" class="container pt-5">
        <div class="worker">
            <h2>
				Our Dedicated<br />
				Professionals
			</h2>
            <p class="pb-5 pt-3">
				Lorem ipsum dolor sit amet<br>
				consectetur adipisicing elit. Minus<br>
				minima neque tempora reiciendis.
			</p>
        </div>
        <div>
		<!-- Row 1 -->
			<div class="row mb-5">
				<div class="col-xl-3">
                    <asp:Image ID="Image2" runat="server" AlternateText="Kaiara Spencer Image" 
                        ImageUrl="~/img/person_1.png" class="w-100"/>
					<div class="gray-bg1 py-2 px-3">
						<h3>Kaiara Spencer</h3>
						<span class="text-gray">Product Manager</span>
					</div>
				</div>
				<div class="col-xl-3 ">
                    <asp:Image ID="Image3" runat="server" AlternateText="Dave Simpson Image" 
                        ImageUrl="~/img/person_2.jpg" class="w-100"/>
					<div class="gray-bg1 py-2 px-3">
						<h3>Dave Simpson</h3>
						<span class="text-gray">Product Manager</span>
					</div>
				</div>
				<div class="col-xl-3 ">
                    <asp:Image ID="Image4" runat="server" AlternateText="Ben Thompson Image" 
                        ImageUrl="~/img/person_3.png" class="w-100"/>
					<div class="gray-bg1 py-2 px-3">
						<h3>Ben Thompson</h3>
						<span class="text-gray">Regional Manager</span>
					</div>
				</div>
				<div class="col-xl-3 ">
                    <asp:Image ID="Image5" runat="server" AlternateText="Kyla Stewart Image" 
                        ImageUrl="~/img/person_4.png" class="w-100"/>
					<div class="gray-bg1 py-2 px-3">
						<h3>Kyla Stewart</h3>
						<span class="text-gray">Department Manager</span>
					</div>
				</div>
			</div>
			
			<!-- ROW 2nd -->
			<div class="row pb-5 mb-5">
				<div class="col-xl-3 col-md-6">
                    <asp:Image ID="Image6" runat="server" AlternateText="Steve Spencer Image" 
                        ImageUrl="~/img/person_5.png" class="w-100"/>
					<div class="gray-bg1 py-2 px-3">
						<h3>Steve Spencer</h3>
						<span class="text-gray">Analyst</span>
					</div>
				</div>
				<div class="col-xl-3 col-md-6">
					
                    <asp:Image ID="Image7" runat="server" AlternateText="abc" 
                        ImageUrl="~/img/person_6.png" class="w-100"/>
					<div class="gray-bg1 py-2 px-3">
						<h3>Dave Simpson</h3>
						<span class="text-gray">Analyst</span>
					</div>
				</div>
				<div class="col-xl-3 col-md-6">
					
                    <asp:Image ID="Image8" runat="server" AlternateText="aaa" 
                        ImageUrl="~/img/person_7.png" class="w-100"/>
					<div class="gray-bg1 py-2 px-3">
						<h3>Adward Thompson</h3>
						<span class="text-gray">Devloper</span>
					</div>
				</div>
				<div class="col-xl-3 col-md-6">
                    <asp:Image ID="Image9" runat="server" AlternateText="aa" 
                        ImageUrl="~/img/person_8.png" class="w-100"/>
					<div class="gray-bg1 py-2 px-3">
						<h3>Ryla Stewart</h3>
						<span class="text-gray">Marketing</span>
					</div>
				</div>
			</div>
		</div>
    </div>

     <!-- Slider -->
     <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
     <div id="three" class="container">
		<div class="row py-5">
			<div class="col-xl-6 pb-5">
				<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
						<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
                            <asp:Image ID="Image10" runat="server" ImageUrl="~/img/slide_4.jpg" class="d-block w-100"/>
						</div>
						<div class="carousel-item">
                            <asp:Image ID="Image11" runat="server" ImageUrl="~/img/slide_4.jpg" class="d-block w-100"/>
						</div>
						<div class="carousel-item">
                            <asp:Image ID="Image12" runat="server" ImageUrl="~/img/slide_4.jpg" class="d-block w-100"/>
						</div>
						<div class="carousel-item">
                            <asp:Image ID="Image13" runat="server" ImageUrl="~/img/slide_4.jpg" class="d-block w-100"/>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-xl-6 px-5 text-gray agency">
				<h2 class="f-40 pl-5 ">
					We Are The Best<br>
					Laundry Service
				</h2>
				<p class=" pt-3">
					Lorem ipsum dolor sit amet consectetur adipisicing elit
				</p>
				<p class="pl-5 pr-4 f-18 font-weight-normal py-3">
					Est qui eos quasi ratione nostrum excepturi id recusandae fugit omnis ullam pariatur
					itaque nisi voluptas impedit Quo suscipit omnis iste velit maxime.
				</p>
                <asp:Button ID="Button2" runat="server" Text="Learn More" class="rounded-pill border-0 text-white pinkbg" />
                <asp:Panel ID="Panel1" runat="server" class="popup">
                    <div class="text-white">
                        <div><asp:Button ID="Button10" runat="server" Text="x" 
                            class="text-white pinkbg border-0 fs-4 w-25 float-end" onclientclick="panel1.close"/></div>
                        <div>
                            <h2 class="text-white text-center mb-3 pt-5">We Are The Best <br />Laundry Service</h2>
                            <p class="text-white justify"> 
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                            </p>
                        </div>
                    </div>       
                </asp:Panel>
                <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="Button2" PopupControlID="Panel1" BackgroundCssClass="background"></cc1:ModalPopupExtender>
			</div>
		</div>
	</div>

    <!-- Services -->
	<div id="four" class="greybg py-4">
		<div class="container">
			<h2 class="f-40 text-pink text-center py-5">Our Services</h2>
			<!-- 1st ROW -->
			<div class="row text-gray pt-2  pb-5">
				<div class="col-xl-4">
					<div class="row">
						<div class="float-left w-25 service-icon pl-4">
							<i class="fas fa-tshirt text-pink"></i>
						</div>
						<div class="float-right w-75">
							<h3 class="f-20">Wash Cloth</h3>
							<p class="line-height pr-5">
								Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.
							</p>
							<label><asp:HyperLink ID="HyperLink1" runat="server" class="text-decoration-none text-pink">Learn More</asp:HyperLink></label>
                            <asp:Panel ID="Panel2" runat="server" class="popup">
                                <div class="text-white">
                        <div class="row">
                            <div class="col-xl-8">
                                <h2 class="text-white mb-3 py-2">Wash Cloths</h2>
                            </div>
                            <div class="col-xl-4">
                                <asp:Button ID="Button4" runat="server" Text="x" 
                                     class="text-white pinkbg border-0 fs-4 w-25 float-end" onclientclick="panel1.close"/>
                            </div>
                        </div>
                        <div>
                            
                            <asp:Image ID="Image17" runat="server" ImageUrl="~/img/wash.jpeg" class="w-100 pb-2"/>
                            <p class="text-white justify"> 
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s.
                            </p>
                        </div>
                    </div>    
                            </asp:Panel>
                            <cc1:ModalPopupExtender ID="ModalPopupExtender2" runat="server" TargetControlID="HyperLink1" PopupControlID="Panel2" BackgroundCssClass="background"></cc1:ModalPopupExtender>
						</div>
					</div>
				</div>
				<div class="col-xl-4">
					<div class="row">
						<div class="float-left w-25 service-icon pl-4">
							<i class="fas fa-backspace text-pink"></i>
						</div>
						<div class="float-right w-75">
							<h3 class="f-20">Iron cloth</h3>
							<p class="line-height pr-5">
								Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.
							</p>
                            <label><asp:HyperLink ID="HyperLink2" runat="server" class="text-decoration-none text-pink">Learn More</asp:HyperLink></label>
                            <asp:Panel ID="Panel3" runat="server" class="popup">
                                <div class="text-white">
                                    <div class="row">
                                        <div class="col-xl-8">
                                            <h2 class="text-white mb-3 py-2">Iron Cloths</h2>
                                        </div>
                                        <div class="col-xl-4">
                                            <asp:Button ID="Button5" runat="server" Text="x" 
                                                 class="text-white pinkbg border-0 fs-4 w-25 float-end" onclientclick="panel1.close"/>
                                        </div>
                                    </div>
                                <div>
                                <asp:Image ID="Image18" runat="server" ImageUrl="~/img/iron.jpg" class="w-100 pb-2"/>
                                <p class="text-white justify"> 
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s.
                                </p>
                                </div>
                            </div>    
                            </asp:Panel>
                            <cc1:ModalPopupExtender ID="ModalPopupExtender3" runat="server" TargetControlID="HyperLink2" PopupControlID="Panel3" BackgroundCssClass="background"></cc1:ModalPopupExtender>
						</div>
					</div>
				</div>
				<div class="col-xl-4">
					<div class="row">
						<div class="float-left w-25 service-icon pl-4">
							<i class="far fa-clock text-pink"></i>
						</div>
						<div class="float-right w-75">
							<h3 class="f-20">Dry Clean</h3>
							<p class="line-height pr-5">
								Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.
							</p>
							<label><asp:HyperLink ID="HyperLink3" runat="server" class="text-decoration-none text-pink">Learn More</asp:HyperLink></label>
                            <asp:Panel ID="Panel4" runat="server" class="popup">
                                <div class="text-white">
                                    <div class="row">
                                        <div class="col-xl-8">
                                            <h2 class="text-white mb-3 py-2">Dry Clean</h2>
                                        </div>
                                        <div class="col-xl-4">
                                            <asp:Button ID="Button6" runat="server" Text="x" 
                                                 class="text-white pinkbg border-0 fs-4 w-25 float-end" onclientclick="panel1.close"/>
                                        </div>
                                    </div>
                                <div>
                                <asp:Image ID="Image19" runat="server" ImageUrl="~/img/dry.jpg" class="w-100 pb-2"/>
                                <p class="text-white justify"> 
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic
                                </p>
                                </div>
                            </div>    
                            </asp:Panel>
                            <cc1:ModalPopupExtender ID="ModalPopupExtender4" runat="server" TargetControlID="HyperLink3" PopupControlID="Panel4" BackgroundCssClass="background"></cc1:ModalPopupExtender>
						</div>
					</div>
				</div>
			</div>
					
					
			<!-- 2nd ROW -->
			<div class="row text-gray pt-2 pb-5">
				<div class="col-xl-4">
					<div class="row">
						<div class="float-left w-25 service-icon pl-4">
							<i class="fas fa-clipboard-check text-pink"></i>
						</div>
						<div class="float-right w-75">
							<h3 class="f-20">Remove Dirt Marks</h3>
							<p class="line-height pr-5">
								Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.
							</p>
                            <label> <asp:HyperLink ID="HyperLink4" runat="server" class="text-decoration-none text-pink">Learn More</asp:HyperLink></label>
							<asp:Panel ID="Panel5" runat="server" class="popup">
                                <div class="text-white">
                                    <div class="row">
                                        <div class="col-xl-8">
                                            <h2 class="text-white mb-3 py-2">Remove Dirt Marks</h2>
                                        </div>
                                        <div class="col-xl-4">
                                            <asp:Button ID="Button7" runat="server" Text="x" 
                                                 class="text-white pinkbg border-0 fs-4 w-25 float-end" onclientclick="panel1.close"/>
                                        </div>
                                    </div>
                                <div>
                                <asp:Image ID="Image20" runat="server" ImageUrl="~/img/curtain.jpg" class="w-100 pb-2"/>
                                <p class="text-white justify"> 
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s.
                                </p>
                                </div>
                            </div>    
                            </asp:Panel>
                            <cc1:ModalPopupExtender ID="ModalPopupExtender5" runat="server" TargetControlID="HyperLink4" PopupControlID="Panel5" BackgroundCssClass="background"></cc1:ModalPopupExtender>
						</div>
					</div>
				</div>
				<div class="col-xl-4">
					<div class="row">
						<div class="float-left w-25 service-icon pl-4">
							<i class="fas fa-toolbox text-pink"></i>
						</div>
						<div class="float-right w-75">
							<h3 class="f-20">Curtain Wash</h3>
							<p class="line-height pr-5">
								Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.
							</p>
                            <label><asp:HyperLink ID="HyperLink5" runat="server" class="text-decoration-none text-pink">Learn More</asp:HyperLink></label>
                            <asp:Panel ID="Panel6" runat="server" class="popup">
                                <div class="text-white">
                                    <div class="row">
                                        <div class="col-xl-8">
                                            <h2 class="text-white mb-3 py-2">Curtain Wash</h2>
                                        </div>
                                        <div class="col-xl-4">
                                            <asp:Button ID="Button8" runat="server" Text="x" 
                                                 class="text-white pinkbg border-0 fs-4 w-25 float-end" onclientclick="panel1.close"/>
                                        </div>
                                    </div>
                                <div>
                                <asp:Image ID="Image21" runat="server" ImageUrl="~/img/cwash.jpg" class="w-100 pb-2"/>
                                <p class="text-white justify"> 
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                                </p>
                                </div>
                            </div>    
                            </asp:Panel>
                            <cc1:ModalPopupExtender ID="ModalPopupExtender6" runat="server" TargetControlID="HyperLink5" PopupControlID="Panel6" BackgroundCssClass="background"></cc1:ModalPopupExtender>
						</div>
					</div>
				</div>
				<div class="col-xl-4">
					<div class="row">
						<div class="float-left w-25 service-icon pl-4">
							<i class="fas fa-cloud text-pink"></i>
						</div>
						<div class="float-right w-75">
							<h3 class="f-20">Ironing Curtain</h3>
							<p class="line-height pr-5">
								Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.
							</p>
                            <label><asp:HyperLink ID="HyperLink6" runat="server" class="text-decoration-none text-pink">Learn More</asp:HyperLink></label>
							<asp:Panel ID="Panel7" runat="server" class="popup">
                                <div class="text-white">
                                    <div class="row">
                                        <div class="col-xl-8">
                                            <h2 class="text-white mb-3 py-2">Iron Cloths</h2>
                                        </div>
                                        <div class="col-xl-4">
                                            <asp:Button ID="Button9" runat="server" Text="x" 
                                                 class="text-white pinkbg border-0 fs-4 w-25 float-end" onclientclick="panel1.close"/>
                                        </div>
                                    </div>
                                <div>
                                <asp:Image ID="Image22" runat="server" ImageUrl="~/img/curtain.jpg" class="w-100 pb-2 pr-5"/>
                                <p class="text-white justify"> 
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s.
                                </p>
                                </div>
                            </div>    
                            </asp:Panel>
                            <cc1:ModalPopupExtender ID="ModalPopupExtender7" runat="server" TargetControlID="HyperLink6" PopupControlID="Panel7" BackgroundCssClass="background"></cc1:ModalPopupExtender>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

     <!-- How We Work -->
	
	<div id="five" class="container">
		<div class="work">
			<h2 class="f-40 py-5">Our Approach</h2>
			<div class="row text-center">
				<div class="col-xl-4 px-5">
                    <div class="border rounded-circle border-3 py-5">
                        <asp:Image ID="Image14" runat="server" AlternateText="Order Placing Logo" 
                            ImageUrl="~/img/placing.jpg" class="work1 py-3" />
					</div>
				</div>
				<div class="col-xl-4">
					<div class="border rounded-circle border-3 py-5">
                        <asp:Image ID="Image15" runat="server" AlternateText="Pickup Logo"
                        ImageUrl="~/img/pickup.jpg" class="work2 py-4" />
					</div>
				</div>
				<div class="col-xl-4">
					<div class="border rounded-circle border-3 py-5">
                        <asp:Image ID="Image16" runat="server" AlternateText="Delivery Logo"
                            ImageUrl="~/img/delivery.png" class="work3"/><br />
						<h5>Delivery<h5>
					</div>
				</div>
			</div>
		</div>
	</div>

    <!-- Contact -->
	<div id="six" class="greybg mt-5">
		<div class="container py-5">
			<h3 class="text-center service1">Any Query</h3>
			<h2 class="service2 text-center pb-5">Contact Us</h2>
			<div class="row">
				<div class="col-xl-6 bg-white mx-3 pb-5">
					<form method="" action="">
						<h2 class="py-4">Contact Form</h2>
						<div class="row">
							<div class="col-md-6">
								<label>FIRST NAME</label>
                                <asp:TextBox ID="TextBox1" runat="server" class="w-100 py-2 rounded-pill border-secondary"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ErrorMessage="Please Enter your First Name" ControlToValidate="TextBox1" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
							</div>
							<div class="col-md-6">
								<label>LAST NAME</label>
                                <asp:TextBox ID="TextBox2" runat="server" 
                                    class="w-100 py-2 rounded-pill border-secondary" BorderStyle="Inset"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ErrorMessage="Please Enter your Last Name" ControlToValidate="TextBox2" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
							</div>
						</div>
						<label>Email</label><br />
                        <asp:TextBox ID="TextBox3" runat="server" class="w-100 mr-3 py-2 rounded-pill border-secondary"></asp:TextBox><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Please Enter valid Email Address" ControlToValidate="TextBox3" 
                            ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
						<label>Subject</label><br />
                        <asp:TextBox ID="TextBox4" runat="server" class="w-100 py-2 rounded-pill border-secondary"></asp:TextBox><br /><br />
						<label>Message</label><br />
                        <asp:TextBox ID="TextBox5" runat="server" class="w-100 rounded-pill border-secondary" TextMode="MultiLine"></asp:TextBox><br />
                        <asp:Button ID="Button3" runat="server" Text="Send Message" 
                            class="my-2 pinkbg text-white border-0 rounded-pill" onclick="Button3_Click"/>
					</form>
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

    <!-- Footer -->
	
	<div class="footer py-5">
		<div class="container">
			<div class="row">
				<div class="col-xl-3">
					<h3>PHONE SUPPORT</h3>
					<p>
						24 HOURS A DAY
					</p>
					<div class="text-white pt-3">
						<h5>+919876543210</h5>
					</div>
				</div>
				<div class="col-xl-4">
					<h3>CONNECT WITH US</h3>
					<p>
						SOCIAL MEDIA CHANNELS
					</p>
					<div class="icon pt-3">
						<div class="t4Left">
							<i class="fab fa-instagram"></i>
						</div>
						<div class="t4Left">
							<i class="fab fa-twitter"></i>
						</div>
						<div class="t4Left">
							<i class="fab fa-facebook-f"></i>
						</div>
						<div class="t4Left">
							<i class="fab fa-pinterest-p"></i>
						</div>
						<div class="t4Left">
							<i class="fab fa-youtube"></i>
						</div>
						<div class="t4Clear"></div>
					</div>
				</div>
				<div class="col-xl-5">
					<div class="footer fLast">
						<h3>NEWSLETTER</h3>
						<p>
							SIGN UP FOR SPECIAL OFFER
						</p>
					</div>
					<form action="" method="" class="pt-3">
						<div class="t4Left iForm">
							<input type="text" name="" placeholder="Email">
						</div>
						<div class="t4Right">
							<div class="subscribe">
								<button type="button">READ MORE</button>
							</div>
						</div>
						<div class="t4Clear"></div>
					</form>
				</div>
			</div>
		</div>
	</div>

    <!-- Copyrights -->
	
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
