<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Laundry Wala</title>
    <link href="StyleSheet.css" type="text/css" rel="stylesheet"/>
	<link href="fontawesome-free-5.15.2-web/css/all.css" type="text/css" rel="stylesheet">
	<link href="bootstrap-5.0.0-beta2-dist/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<link href="img/logo.png" type="img/ico" rel="icon"/>
	<script src="bootstrap-5.0.0-beta2-dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="bootstrap-5.0.0-beta2-dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="bootstrap-5.0.0-beta2-dist/js/bootstrap.bundle.js " type="text/javascript"></script>
    
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
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

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
    
    <!-- Main -->
    <div class="mainban">
        <div class="container">
            <div class="row">
                <!--Iron Gents Cloth-->
                <div class="col-xl-3">
                    <asp:Button ID="Button1" runat="server" Text="IRON GENTS CLOTHS" class="border-0 text-white fs-5 roundedcorner"  />
                    <asp:Panel ID="Panel1" runat="server" class="popup">
                        <div class="text-white"> 
                            <div align="right">
                                <asp:Button ID="Button3" runat="server" Text="X" Height="35px" Width="36px" class="border-0 pinkbg text-white"/>
                            </div>
                            <div class="text-center mb-4">
                                <h3><u>Gents Cloth for Iron</u></h3>
                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                            </div>
                            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>

                            <!--Data Source-->
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" 
                                SelectCommand="SELECT [ItemName], [Price] FROM [ItemDetails] WHERE ([Category] = @Category)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Gents Cloth Iron" Name="Category" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <!--Gents Cloth Iron Gridview-->
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource1" class="border-0" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="590px" 
                                PageSize="8">
                                <Columns>
                                    <asp:BoundField DataField="ItemName" HeaderText="Item Name" 
                                        SortExpression="ItemName" >
                                    <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" >
                                    <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" 
                                        HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" type= "number" Width="54px"></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" 
                                            HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:CommandField ShowSelectButton="True" >
                                    <ItemStyle ForeColor="White" />
                                    </asp:CommandField>
                                </Columns>
                            </asp:GridView>
                            
                        </div>
                    </asp:Panel>
                    <cc1:modalpopupextender ID="ModalPopupExtender1" runat="server" TargetControlID="Button1" 
                    PopupControlID="Panel1" BackgroundCssClass="background"></cc1:modalpopupextender>
                </div>

                <!--Wash Gents Cloth-->
                <div class="col-xl-3">
                    <asp:Button ID="Button2" runat="server" Text="WASH GENTS CLOTH" class="border-0 text-white fs-5 roundedcorner"  />
                    <asp:Panel ID="Panel2" runat="server" class="popup">
                        <div class="text-white"> 
                            <div align="right">
                                <asp:Button ID="Button4" runat="server" Text="X" Height="35px" Width="36px" class="border-0 pinkbg text-white"/>
                            </div>
                            <div class="text-center mb-4">
                                <h3>Gents Cloth for Wash</h3>
                            </div>
                            
                            <!--Data Source-->
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" 
                                SelectCommand="SELECT [ItemName], [Price] FROM [ItemDetails] WHERE ([Category] = @Category)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Gents Cloth Wash" Name="Category" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <!--Gents Cloth Wash Gridview-->
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource2" class="border-0"
                                onselectedindexchanged="GridView2_SelectedIndexChanged" AllowPaging="True" 
                                Width="590px">
                                <Columns>
                                    <asp:BoundField DataField="ItemName" HeaderText="Item Name" 
                                        SortExpression="ItemName" >
                                    <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" >
                                    <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" type= "number" Width="54px"></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:TemplateField>
                                    <asp:CommandField ShowSelectButton="True" >
                                    <ItemStyle ForeColor="White" />
                                    </asp:CommandField>
                                </Columns>
                            </asp:GridView>
                            
                        </div>
                    </asp:Panel>
                    <cc1:modalpopupextender ID="ModalPopupExtender2" runat="server" TargetControlID="Button2" 
                    PopupControlID="Panel2" BackgroundCssClass="background"></cc1:modalpopupextender>
                </div>

                <!--Iron Ladies Cloth-->
                <div class="col-xl-3">
                    <asp:Button ID="Button5" runat="server" Text="IRON LADIES CLOTHS" class="border-0 text-white fs-5 roundedcorner"  />
                    <asp:Panel ID="Panel3" runat="server" class="popup">
                        <div class="text-white"> 
                            <div align="right">
                                <asp:Button ID="Button6" runat="server" Text="X" Height="35px" Width="36px" class="border-0 pinkbg text-white"/>
                            </div>
                            <div class="text-center mb-4">
                                <h3>Ladies Cloth for Iron</h3>
                            </div>
                            
                            <!--Data Source-->
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" 
                                SelectCommand="SELECT [ItemName], [Price] FROM [ItemDetails] WHERE ([Category] = @Category)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Ladies Cloth Iron" Name="Category" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <!--Ladies Cloth Iron Gridview-->
                            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" DataSourceID="SqlDataSource3" class="border-0" 
                                onselectedindexchanged="GridView3_SelectedIndexChanged" Width="590px">
                                <Columns>
                                    <asp:BoundField DataField="ItemName" HeaderText="Item Name" 
                                        SortExpression="ItemName" >
                                    <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" >
                                    <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" type= "number" Width="54px"></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:TemplateField>
                                    <asp:CommandField ShowSelectButton="True" >
                                    <ItemStyle ForeColor="White" />
                                    </asp:CommandField>
                                </Columns>
                            </asp:GridView>
                            
                        </div>
                    </asp:Panel>
                    <cc1:modalpopupextender ID="ModalPopupExtender3" runat="server" TargetControlID="Button5" 
                    PopupControlID="Panel3" BackgroundCssClass="background"></cc1:modalpopupextender>
                </div>

                <!--Wash Ladies Cloth-->
                <div class="col-xl-3">
                    <asp:Button ID="Button7" runat="server" Text="WASH LADIES CLOTHS" class="border-0 text-white fs-5 roundedcorner"  />
                    <asp:Panel ID="Panel4" runat="server" class="popup">
                        <div class="text-white"> 
                            <div align="right">
                                <asp:Button ID="Button8" runat="server" Text="X" Height="35px" Width="36px" class="border-0 pinkbg text-white"/>
                            </div>
                            <div class="text-center mb-4">
                                <h3>Ladies Cloth for Wash</h3>
                            </div>
                            
                            <!--Data Source-->
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" 
                                SelectCommand="SELECT [ItemName], [Price] FROM [ItemDetails] WHERE ([Category] = @Category)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Ladies Cloth Wash" Name="Category" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <!--Ladies Cloth Iron Gridview-->
                            <asp:GridView ID="GridView4" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" DataSourceID="SqlDataSource4" class="border-0"
                                onselectedindexchanged="GridView4_SelectedIndexChanged" Width="590px">
                                <Columns>
                                    <asp:BoundField DataField="ItemName" HeaderText="Item Name" 
                                        SortExpression="ItemName" >
                                    <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" >
                                    <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" type= "number" Width="54px"></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:TemplateField>
                                    <asp:CommandField ShowSelectButton="True" >
                                    <ItemStyle ForeColor="White" />
                                    </asp:CommandField>
                                </Columns>
                            </asp:GridView>
                            
                        </div>
                    </asp:Panel>
                    <cc1:modalpopupextender ID="ModalPopupExtender4" runat="server" TargetControlID="Button7" 
                    PopupControlID="Panel4" BackgroundCssClass="background"></cc1:modalpopupextender>
                </div>

                <!--Iron Kids Cloth-->
                <div class="col-xl-3">
                    <asp:Button ID="Button9" runat="server" Text="IRON KIDS CLOTHS" class="border-0 text-white fs-5 roundedcorner"  />
                    <asp:Panel ID="Panel5" runat="server" class="popup">
                        <div class="text-white"> 
                            <div align="right">
                                <asp:Button ID="Button10" runat="server" Text="X" Height="35px" Width="36px" class="border-0 pinkbg text-white"/>
                            </div>
                            <div class="text-center mb-4">
                                <h3>Kids Cloth for Iron</h3>
                            </div>
                            
                            <!--Data Source-->
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" 
                                SelectCommand="SELECT [ItemName], [Price] FROM [ItemDetails] WHERE ([Category] = @Category)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Kids Cloth Iron" Name="Category" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <!--Kids Cloth Iron Gridview-->
                            <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" DataSourceID="SqlDataSource5" class="border-0"
                                onselectedindexchanged="GridView5_SelectedIndexChanged" Width="590px">
                                <Columns>
                                    <asp:BoundField DataField="ItemName" HeaderText="Item Name" 
                                        SortExpression="ItemName" >
                                    <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" >
                                    <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" type= "number" Width="54px"></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:TemplateField>
                                    <asp:CommandField ShowSelectButton="True" >
                                    <ItemStyle ForeColor="White" />
                                    </asp:CommandField>
                                </Columns>
                            </asp:GridView>
                            
                        </div>
                    </asp:Panel>
                    <cc1:modalpopupextender ID="ModalPopupExtender5" runat="server" TargetControlID="Button9" 
                    PopupControlID="Panel5" BackgroundCssClass="background"></cc1:modalpopupextender>
                </div>

                <!--Iron Kids Cloth-->
                <div class="col-xl-3">
                    <asp:Button ID="Button11" runat="server" Text="WASH KIDS CLOTHS" class="border-0 text-white fs-5 roundedcorner"  />
                    <asp:Panel ID="Panel6" runat="server" class="popup">
                        <div class="text-white"> 
                            <div align="right">
                                <asp:Button ID="Button12" runat="server" Text="X" Height="35px" Width="36px" class="border-0 pinkbg text-white"/>
                            </div>
                            <div class="text-center mb-4">
                                <h3>Kids Cloth for Wash</h3>
                            </div>
                            
                            <!--Data Source-->
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" 
                                SelectCommand="SELECT [ItemName], [Price] FROM [ItemDetails] WHERE ([Category] = @Category)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Kids Cloth Wash" Name="Category" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <!--Kids Cloth Iron Gridview-->
                            <asp:GridView ID="GridView6" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" DataSourceID="SqlDataSource6" class="border-0" 
                                onselectedindexchanged="GridView6_SelectedIndexChanged" Width="590px">
                                <Columns>
                                    <asp:BoundField DataField="ItemName" HeaderText="ItemName" 
                                        SortExpression="ItemName" >
                                    <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" >
                                    <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" type= "number" Width="54px"></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:TemplateField>
                                    <asp:CommandField ShowSelectButton="True" >
                                    <ItemStyle ForeColor="White" />
                                    </asp:CommandField>
                                </Columns>
                            </asp:GridView>
                            
                        </div>
                    </asp:Panel>
                    <cc1:modalpopupextender ID="ModalPopupExtender6" runat="server" TargetControlID="Button11" 
                    PopupControlID="Panel6" BackgroundCssClass="background"></cc1:modalpopupextender>
                </div>

                 <!--DryClean Cloth-->
                <div class="col-xl-3">
                    <asp:Button ID="Button13" runat="server" Text="DRY CLEAN" class="border-0 text-white fs-5 roundedcorner"  />
                    <asp:Panel ID="Panel7" runat="server" class="popup">
                        <div class="text-white"> 
                            <div align="right">
                                <asp:Button ID="Button14" runat="server" Text="X" Height="35px" Width="36px" class="border-0 pinkbg text-white"/>
                            </div>
                            <div class="text-center mb-4">
                                <h3>Dry Clean</h3>
                            </div>
                            
                            <!--Data Source-->
                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" 
                                SelectCommand="SELECT [ItemName], [Price] FROM [ItemDetails] WHERE ([Category] = @Category)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Dry Clean" Name="Category" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <!--Kids Cloth Iron Gridview-->
                            <asp:GridView ID="GridView7" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" DataSourceID="SqlDataSource7" class="border-0" 
                                onselectedindexchanged="GridView7_SelectedIndexChanged" Width="590px">
                                <Columns>
                                    <asp:BoundField DataField="ItemName" HeaderText="Item Name" 
                                        SortExpression="ItemName" >
                                    <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" >
                                    <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox7" runat="server" type= "number" Width="54px"></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:TemplateField>
                                    <asp:CommandField ShowSelectButton="True" >
                                    <ItemStyle ForeColor="White" />
                                    </asp:CommandField>
                                </Columns>
                            </asp:GridView>
                            
                        </div>
                    </asp:Panel>
                    <cc1:modalpopupextender ID="ModalPopupExtender7" runat="server" TargetControlID="Button13" 
                    PopupControlID="Panel7" BackgroundCssClass="background"></cc1:modalpopupextender>
                </div>

                <!--Home Essential-->
                <div class="col-xl-3">
                    <asp:Button ID="Button15" runat="server" Text="HOME ESSENTIAL" class="border-0 text-white fs-5 roundedcorner"  />
                    <asp:Panel ID="Panel8" runat="server" class="popup">
                        <div class="text-white"> 
                            <div align="right">
                                <asp:Button ID="Button16" runat="server" Text="X" Height="35px" Width="36px" class="border-0 pinkbg text-white"/>
                            </div>
                            <div class="text-center mb-4">
                                <h3>Home Essential</h3>
                            </div>
                            
                            <!--Data Source-->
                            <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" 
                                SelectCommand="SELECT [ItemName], [Price] FROM [ItemDetails] WHERE ([Category] = @Category)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Home Essential" Name="Category" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <!--Home Essential Gridview-->
                            <asp:GridView ID="GridView8" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" DataSourceID="SqlDataSource8" class="border-0" 
                                onselectedindexchanged="GridView8_SelectedIndexChanged" Width="590px">
                                <Columns>
                                    <asp:BoundField DataField="ItemName" HeaderText="Item Name" 
                                        SortExpression="ItemName" >
                                    <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" >
                                    <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox8" runat="server" type= "number" Width="54px"></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Bold="True" Font-Size="20pt" Height="75px" />
                                    </asp:TemplateField>
                                    <asp:CommandField ShowSelectButton="True" >
                                    <ItemStyle ForeColor="White" />
                                    </asp:CommandField>
                                </Columns>
                            </asp:GridView>
                            
                        </div>
                    </asp:Panel>
                    <cc1:modalpopupextender ID="ModalPopupExtender8" runat="server" TargetControlID="Button15" 
                    PopupControlID="Panel8" BackgroundCssClass="background"></cc1:modalpopupextender>
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
