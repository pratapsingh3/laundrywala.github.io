<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link href="StyleSheet.css" type="text/css" rel="stylesheet" />
	<link href="fontawesome-free-5.15.2-web/css/all.css" type="text/css" rel="stylesheet">
	<link href="bootstrap-5.0.0-beta2-dist/css/bootstrap.css" type="text/css" rel="stylesheet"/>
	<link href="img/logo.png" type="img/ico" rel="icon"/>
</head>
<body>
    <form id="form1" runat="server">
    
        <!--Main-->
		<div class="greybg">
			<div class="row">
				<div class="col-xl-6 ban">
					<!--Login-->
					<asp:Panel ID="Panel2" runat="server">
						<div class="text-white signlog text-center">
							<asp:Label ID="Label1" runat="server" Text="Already have an Account?" Font-Bold="True" Font-Size="X-Large"></asp:Label><br />
						   <asp:Button ID="Button2" runat="server" Text="Log In" class="text-white rounded-pill signbtn pt-2 pb-3 border-0" />
						</div>
					</asp:Panel>
					<!--OTP-->
					<asp:Panel ID="Panel1" runat="server">
						<div class="text-white regotp text-center border pt-5 pb-4">
							<asp:Label ID="Label2" runat="server" Text="Enter OTP" Font-Bold="True" Font-Size="X-Large"></asp:Label><br />
							<asp:Label ID="Label3" runat="server" class="text-success" Text="OTP sent to your registered Mobile Number"></asp:Label><br />
							<asp:TextBox ID="TextBox5" runat="server" class="mt-4 mb-3"></asp:TextBox><br />
							<asp:Button ID="Button1" runat="server" Text="Button" 
								class="rounded-pill signbtn border-0 py-2 mb-2" onclick="Button1_Click" /><br />
							<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
							ErrorMessage="PLease enter OTP" ControlToValidate="TextBox5" class="text-danger"></asp:RequiredFieldValidator>
						</div>
					</asp:Panel> 
                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label> 
				</div>

				<!--Registration Database-->
                

				<div class="col-xl-6">
					<div class="sign pb-5">
						<div class="text-center">
							<h1 class="text-white pt-5 pb-3">SIGN UP</h1>
							<a href="https://www.fb.com"><label class="text-white border rounded-circle pt-3 pb-2 px-3 border-3"><h3><i class="fab fa-facebook"></i></h3></label></a>
							<a href="https://www.twitter.com"><label class="text-white border rounded-circle pt-3 pb-2 px-3 border-3"><h3><i class="fab fa-twitter"></i></h3></label></a>
							<a href="https://www.google.com"><label class="text-white border rounded-circle pt-3 pb-2 px-3 border-3 mb-3"><h3><i class="fab fa-google"></i></h3></label></a><br />  
						</div>
						<div class="signmarg">
							<asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Name" 
                                class="rounded-pill py-2 signinp px-4" ></asp:TextBox><br />
							<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
								ErrorMessage="* Please Enter your Name" ControlToValidate="TextBox1"  
								ForeColor="White"></asp:RequiredFieldValidator><br />
						
							<asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Email ID" class="rounded-pill py-2 signinp px-4"></asp:TextBox><br />
							<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
								ErrorMessage="* Please Enter your Email Address" ControlToValidate="TextBox2" 
								ForeColor="White"></asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
								ErrorMessage="* Please Enter valid Email Address" ControlToValidate="TextBox2" 
								ForeColor="White" 
								ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />

							<asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Mobile Number" class="rounded-pill py-2 signinp px-4"></asp:TextBox><br />
							<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
								ErrorMessage="* Please Enter your Mobile Number" ControlToValidate="TextBox3" 
								ForeColor="White"></asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
								ErrorMessage="* Please Enter Correct Mobile Number" ControlToValidate="TextBox3" 
								ForeColor="White" ValidationExpression="^[7-9][0-9]{9}$" ></asp:RegularExpressionValidator><br />

							<asp:TextBox ID="TextBox4" runat="server" type="password" placeholder="Enter Password" class="rounded-pill py-2 signinp px-4"></asp:TextBox><br />
							<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
								ErrorMessage="* Please Enter your Password" ControlToValidate="TextBox4" 
								ForeColor="White"></asp:RequiredFieldValidator>
						</div>
						<div class="text-center">
							<asp:Button ID="Button3" runat="server" Text="Button" 
								class="rounded-pill signbtn border-0 py-2" onclick="Button3_Click"   />
						</div>
					</div>
				</div>
			</div>
		</div>

    </form>
</body>
</html>
