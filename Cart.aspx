<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
    <link href="StyleSheet.css" type="text/css" rel="stylesheet"/>
	<link href="fontawesome-free-5.15.2-web/css/all.css" type="text/css" rel="stylesheet"/>
	<link href="bootstrap-5.0.0-beta2-dist/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous"/>
	<link href="img/logo.png" type="img/ico" rel="icon"/>
	<script src="bootstrap-5.0.0-beta2-dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="bootstrap-5.0.0-beta2-dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="bootstrap-5.0.0-beta2-dist/js/bootstrap.bundle.js " type="text/javascript"></script>
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
                                <asp:Button ID="Button17" runat="server" Text="Log Out" onclick="Button17_Click" class="bg-white border-0 "/>
                            </li>
                         </ul>
                    </li>
                    <li class="mt-3">
                        <h4>
                            <a href="Cart.aspx" class="text-decoration-none">
                                
                                <asp:Label ID="Labe22" runat="server" class="cart"><i class="fas fa-shopping-cart text-pink"></i></asp:Label>
                                <asp:Label ID="Labe23" runat="server" class="text-pink" Text="Cart"></asp:Label>
                                
                            </a>
                        </h4>
                    </li>
                 </ul>
             </div>
        </div>
    </div>

    <div class="greybg">
        <div class="container">
            <div class="row">
                <div class="col-xl-7 bg-white mb-4 mx-2 pt-4">
                    <h3 class="text-pink">My Cart (<asp:Label ID="Label11" runat="server" Text=""></asp:Label>)</h3>
                    <hr class="text-gray"/>
                    
                    <!-- Database connection and Grid view-->
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" 
                        SelectCommand="SELECT [ItemName], [ItemPrice], [Quantity] FROM [Cart] WHERE (([Status] = @Status) AND ([CustomerID] = @CustomerID))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
                            <asp:SessionParameter Name="CustomerID" SessionField="id" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" Width="764px" class="border-0">
                        <Columns>
                            <asp:BoundField DataField="ItemName" HeaderText="Item Name" 
                                SortExpression="ItemName" />
                            <asp:BoundField DataField="ItemPrice" HeaderText="ItemPrice" 
                                SortExpression="ItemPrice" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                                SortExpression="Quantity" />
                            <asp:TemplateField HeaderText="Amount">
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Convert.ToInt32(Eval("ItemPrice")) * Convert.ToInt32(Eval("Quantity")) %>'></asp:Label> 
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>

                </div>
                <div class="col-xl-4 mx-2 mb-2">
                    <div class="bg-white px-3">
                        <h5 class="text-gray pt-4">PRICE DETAILS</h5>
                        <hr class="text-gray"/>
                        <div class="row">
                            <div class="col-xl text-gray">
                                Price (<asp:Label ID="Label5" runat="server" Text="Item"></asp:Label>)<br />
                                Discount<br />
                                Delivery Charges
                            </div>
                            <div class="col-xl">
                                <label class="text-gray">Rs</label> <asp:Label ID="Label4" runat="server" Text="" class="text-gray"></asp:Label>
                                <div class="text-success"><asp:Label ID="Label6" runat="server" Text=""></asp:Label><br />
                                FREE
                                </div>
                            </div>
                        </div>
                        <hr class="text-gray"/>
                        <div class="row">
                            <div class="col-xl">
                                <b>
                                    Total Amount
                                </b>
                            </div>
                            <div class="col-xl">
                                <b>
                                    RS <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                                </b>
                            </div>
                        </div>
                        <hr />
                        <div class="text-success pb-4">
                            You will save Rs <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label> on this order
                        </div>
                    </div>
                    <div class="mt-4 mb-4 bg-white px-3">
                        <h5 class="text-gray pt-4">Contact Details</h5>
                        <hr />
                        <div class="row pb-4">
                            <div class="col-xl-4 text-gray">
                                Name<br />
                                Number<br />
                                Address
                            </div>
                            <div class="col-xl text-gray">
                                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label><br />
                                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label><br />
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <asp:Button ID="Button1" runat="server" Text="Proceed to Pay" 
                                class="pinkbg text-white border-0 mb-4 w-100" onclick="Button1_Click" />
                            </div>
                            <div class="col-xl-5">
                                 <asp:Button ID="Button2" runat="server" Text="Remove Items" 
                                     class="pinkbg text-white border-0 ml-3 w-100" onclick="Button2_Click"/>
                            </div>
                        </div>
                        
                       
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
