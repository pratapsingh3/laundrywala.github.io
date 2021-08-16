<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Control Pannel.aspx.cs" Inherits="Control_Pannel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Control Pannel</title>
    <link href="StyleSheet.css" type="text/css" rel="stylesheet"/>
	<link href="fontawesome-free-5.15.2-web/css/all.css" type="text/css" rel="stylesheet"/>
	<link href="bootstrap-5.0.0-beta2-dist/css/bootstrap.css" type="text/css" rel="stylesheet"/>
	<link href="img/logo.png" type="img/ico" rel="icon"/>
	<script src="bootstrap-5.0.0-beta2-dist/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body class="greybg">
    <form id="form1" runat="server">
    
        <!-- Header -->
		<div class="gray-bg1 border-bottom">
			<div class="container">
				<div class="t4Left">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/logo1.png" alt="Website Logo" class="w-25"/>
                </div>
                <div class="t4Right">

                </div>
                <div class="t4Clear">
                </div>
			</div>
		</div>

        <div class="greybg">
			<div class="row">
				<div class="col-xl-3">
					<div class="accordion" id="accordionExample">
					  <div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
						  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							Contact Form
						  </button>
						</h2>
						<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						  <div class="accordion-body">
							  <asp:Button ID="Button1" runat="server" Text="Contact List" onclick="Button1_Click" class="purplebg boder-0 text-white"/>
						  </div>
						</div>
					  </div>
					  <div class="accordion-item">
						<h2 class="accordion-header" id="headingTwo">
						  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							Registration
						  </button>
						</h2>
						<div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
						  <div class="accordion-body">
							  <asp:Button ID="Button2" runat="server" Text="Details" 
                                  onclick="Button2_Click" class="purplebg boder-0 text-white"/>
						  </div>
						</div>
					  </div>
					  <div class="accordion-item">
						<h2 class="accordion-header" id="headingThree">
						  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
							Items
						  </button>
						</h2>
						<div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
						  <div class="accordion-body">
							  <asp:Button ID="Button3" runat="server" Text="Item Detail and Add new Item" onclick="Button3_Click" 
                                  class="w-100 purplebg boder-0 text-white"  />
						  </div>
						</div>
					  </div>
					  <div class="accordion-item">
						<h2 class="accordion-header" id="headingFour">
						  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
							Order
						  </button>
						</h2>
						<div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
						  <div class="accordion-body">
							  <asp:Button ID="Button5" runat="server" Text="Cart Item" 
                                  onclick="Button5_Click" class="purplebg boder-0 text-white mb-2"/>
                              <asp:Button ID="Button6" runat="server" Text="Order Placed" 
                                  onclick="Button6_Click" class="purplebg boder-0 text-white mb-2"/>
                              <asp:Button ID="Button7" runat="server" Text="Removed Item" 
                                  onclick="Button7_Click" class="purplebg boder-0 text-white mb-2"/>
						  </div>
						</div>
					  </div>
					</div>
				</div>
				<div class="col-xl-9">
					
                    <!--Contact US Data Base Connection -->
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" 
                        SelectCommand="SELECT * FROM [ContactForm]"></asp:SqlDataSource>

                    <!--Contact US Grid View -->
                    <h1 class="text-gray">
                        <asp:Label ID="Label6" runat="server" Text="Contact US"></asp:Label>
                     </h1>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                        GridLines="None" AllowPaging="True">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                                SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                                SortExpression="LastName" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Subject" HeaderText="Subject" 
                                SortExpression="Subject" />
                            <asp:BoundField DataField="Message" HeaderText="Message" 
                                SortExpression="Message" />
                            <asp:BoundField DataField="DateTimeofContact" HeaderText="DateTimeofContact" 
                                SortExpression="DateTimeofContact" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>

                    <!--Registration Data Connection-->
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConflictDetection="CompareAllValues" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" 
                        DeleteCommand="DELETE FROM [Registration] WHERE [Email] = @original_Email AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([ContactNo] = @original_ContactNo) OR ([ContactNo] IS NULL AND @original_ContactNo IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([DateTimeOfRegistration] = @original_DateTimeOfRegistration) OR ([DateTimeOfRegistration] IS NULL AND @original_DateTimeOfRegistration IS NULL))" 
                        InsertCommand="INSERT INTO [Registration] ([Name], [Email], [ContactNo], [Password], [DateTimeOfRegistration]) VALUES (@Name, @Email, @ContactNo, @Password, @DateTimeOfRegistration)" 
                        OldValuesParameterFormatString="original_{0}" 
                        SelectCommand="SELECT * FROM [Registration]" 
                        UpdateCommand="UPDATE [Registration] SET [Name] = @Name, [ContactNo] = @ContactNo, [Password] = @Password, [DateTimeOfRegistration] = @DateTimeOfRegistration WHERE [Email] = @original_Email AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([ContactNo] = @original_ContactNo) OR ([ContactNo] IS NULL AND @original_ContactNo IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([DateTimeOfRegistration] = @original_DateTimeOfRegistration) OR ([DateTimeOfRegistration] IS NULL AND @original_DateTimeOfRegistration IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Email" Type="String" />
                            <asp:Parameter Name="original_Name" Type="String" />
                            <asp:Parameter Name="original_ContactNo" Type="String" />
                            <asp:Parameter Name="original_Password" Type="String" />
                            <asp:Parameter Name="original_DateTimeOfRegistration" Type="DateTime" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="ContactNo" Type="String" />
                            <asp:Parameter Name="Password" Type="String" />
                            <asp:Parameter Name="DateTimeOfRegistration" Type="DateTime" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="ContactNo" Type="String" />
                            <asp:Parameter Name="Password" Type="String" />
                            <asp:Parameter Name="DateTimeOfRegistration" Type="DateTime" />
                            <asp:Parameter Name="original_Email" Type="String" />
                            <asp:Parameter Name="original_Name" Type="String" />
                            <asp:Parameter Name="original_ContactNo" Type="String" />
                            <asp:Parameter Name="original_Password" Type="String" />
                            <asp:Parameter Name="original_DateTimeOfRegistration" Type="DateTime" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                    <!--Registration Grid View-->
                    <h1 class="text-gray">
                        <asp:Label ID="Label7" runat="server" Text="Registration"></asp:Label>
                     </h1>
                    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Email" 
                        DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" 
                                SortExpression="Email" />
                            <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                                SortExpression="ContactNo" />
                            <asp:BoundField DataField="Password" HeaderText="Password" 
                                SortExpression="Password" />
                            <asp:BoundField DataField="DateTimeOfRegistration" 
                                HeaderText="DateTimeOfRegistration" SortExpression="DateTimeOfRegistration" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>

					<!-- Item Detail and Data Base-->
                    
					<div>
                        <asp:Panel ID="Panel1" runat="server" class="my-3">
                            
						    <asp:TextBox ID="TextBox2" runat="server" placeholder="Item Name"></asp:TextBox>
						    <asp:DropDownList ID="DropDownList1" placeholder="Item Name" runat="server" >
							    <asp:ListItem>Gents Cloth Iron</asp:ListItem>
							    <asp:ListItem>Ladies Cloth Iron</asp:ListItem>
							    <asp:ListItem>Kids Cloth Iron</asp:ListItem>
							    <asp:ListItem>Dry Clean</asp:ListItem>
							    <asp:ListItem>Gents Cloth Wash</asp:ListItem>
							    <asp:ListItem>Ladies Cloth Wash</asp:ListItem>
							    <asp:ListItem>Kids Cloth Wash</asp:ListItem>
							    <asp:ListItem>Home Essential</asp:ListItem>
						    </asp:DropDownList>
						    <asp:TextBox ID="TextBox3" runat="server" placeholder="Price"></asp:TextBox>
						    <asp:Button ID="Button4" runat="server" Text="Insert Item" onclick="Button4_Click" class="border-0 text-white pinkbg"/><br />
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </asp:Panel>
						

                        <!--Database Connection-->
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" 
                            DeleteCommand="DELETE FROM [ItemDetails] WHERE [ItemID] = @original_ItemID AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" 
                            InsertCommand="INSERT INTO [ItemDetails] ([ItemName], [Category], [Price]) VALUES (@ItemName, @Category, @Price)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [ItemDetails]" 
                            UpdateCommand="UPDATE [ItemDetails] SET [ItemName] = @ItemName, [Category] = @Category, [Price] = @Price WHERE [ItemID] = @original_ItemID AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_ItemID" Type="Int32" />
                                <asp:Parameter Name="original_ItemName" Type="String" />
                                <asp:Parameter Name="original_Category" Type="String" />
                                <asp:Parameter Name="original_Price" Type="Double" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ItemName" Type="String" />
                                <asp:Parameter Name="Category" Type="String" />
                                <asp:Parameter Name="Price" Type="Double" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ItemName" Type="String" />
                                <asp:Parameter Name="Category" Type="String" />
                                <asp:Parameter Name="Price" Type="Double" />
                                <asp:Parameter Name="original_ItemID" Type="Int32" />
                                <asp:Parameter Name="original_ItemName" Type="String" />
                                <asp:Parameter Name="original_Category" Type="String" />
                                <asp:Parameter Name="original_Price" Type="Double" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                        <!-- Gridview for Item Details-->
                        <h1 class="text-gray">
                            <asp:Label ID="Label5" runat="server" Text="Item Details"></asp:Label>
                        </h1>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ItemID" 
                            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="ItemID" HeaderText="ItemID" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="ItemID" />
                                <asp:BoundField DataField="ItemName" HeaderText="ItemName" 
                                    SortExpression="ItemName" />
                                <asp:BoundField DataField="Category" HeaderText="Category" 
                                    SortExpression="Category" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>

					</div>
					<!--Cart Data Connection-->
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConflictDetection="CompareAllValues" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" 
                        DeleteCommand="DELETE FROM [Cart] WHERE [CartId] = @original_CartId AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND (([ItemPrice] = @original_ItemPrice) OR ([ItemPrice] IS NULL AND @original_ItemPrice IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL))" 
                        InsertCommand="INSERT INTO [Cart] ([ItemName], [ItemPrice], [Quantity], [CustomerID]) VALUES (@ItemName, @ItemPrice, @Quantity, @CustomerID)" 
                        OldValuesParameterFormatString="original_{0}" 
                        SelectCommand="SELECT [CartId], [ItemName], [ItemPrice], [Quantity], [CustomerID] FROM [Cart] WHERE ([Status] = @Status)" 
                        UpdateCommand="UPDATE [Cart] SET [ItemName] = @ItemName, [ItemPrice] = @ItemPrice, [Quantity] = @Quantity, [CustomerID] = @CustomerID WHERE [CartId] = @original_CartId AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND (([ItemPrice] = @original_ItemPrice) OR ([ItemPrice] IS NULL AND @original_ItemPrice IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_CartId" Type="Int32" />
                            <asp:Parameter Name="original_ItemName" Type="String" />
                            <asp:Parameter Name="original_ItemPrice" Type="Double" />
                            <asp:Parameter Name="original_Quantity" Type="Int32" />
                            <asp:Parameter Name="original_CustomerID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ItemName" Type="String" />
                            <asp:Parameter Name="ItemPrice" Type="Double" />
                            <asp:Parameter Name="Quantity" Type="Int32" />
                            <asp:Parameter Name="CustomerID" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ItemName" Type="String" />
                            <asp:Parameter Name="ItemPrice" Type="Double" />
                            <asp:Parameter Name="Quantity" Type="Int32" />
                            <asp:Parameter Name="CustomerID" Type="String" />
                            <asp:Parameter Name="original_CartId" Type="Int32" />
                            <asp:Parameter Name="original_ItemName" Type="String" />
                            <asp:Parameter Name="original_ItemPrice" Type="Double" />
                            <asp:Parameter Name="original_Quantity" Type="Int32" />
                            <asp:Parameter Name="original_CustomerID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                    <!--Cart Item Grid View-->
                    <h1 class="text-gray">
                        <asp:Label ID="Label2" runat="server" Text="Cart Item"></asp:Label>
                     </h1>
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="CartId" DataSourceID="SqlDataSource4" 
                        ForeColor="#333333" GridLines="None" AllowPaging="True">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="CartId" HeaderText="CartId" InsertVisible="False" 
                                ReadOnly="True" SortExpression="CartId" />
                            <asp:BoundField DataField="ItemName" HeaderText="ItemName" 
                                SortExpression="ItemName" />
                            <asp:BoundField DataField="ItemPrice" HeaderText="ItemPrice" 
                                SortExpression="ItemPrice" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                                SortExpression="Quantity" />
                            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" 
                                SortExpression="CustomerID" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>

                    <!--Placed Order Data Connection-->
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                        ConflictDetection="CompareAllValues" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" 
                        DeleteCommand="DELETE FROM [Cart] WHERE [CartId] = @original_CartId AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND (([ItemPrice] = @original_ItemPrice) OR ([ItemPrice] IS NULL AND @original_ItemPrice IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([DateTimeOfPurchase] = @original_DateTimeOfPurchase) OR ([DateTimeOfPurchase] IS NULL AND @original_DateTimeOfPurchase IS NULL))" 
                        InsertCommand="INSERT INTO [Cart] ([ItemName], [ItemPrice], [Quantity], [CustomerID], [Address], [DateTimeOfPurchase]) VALUES (@ItemName, @ItemPrice, @Quantity, @CustomerID, @Address, @DateTimeOfPurchase)" 
                        OldValuesParameterFormatString="original_{0}" 
                        SelectCommand="SELECT [CartId], [ItemName], [ItemPrice], [Quantity], [CustomerID], [Address], [DateTimeOfPurchase] FROM [Cart] WHERE ([Status] = @Status)" 
                        UpdateCommand="UPDATE [Cart] SET [ItemName] = @ItemName, [ItemPrice] = @ItemPrice, [Quantity] = @Quantity, [CustomerID] = @CustomerID, [Address] = @Address, [DateTimeOfPurchase] = @DateTimeOfPurchase WHERE [CartId] = @original_CartId AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND (([ItemPrice] = @original_ItemPrice) OR ([ItemPrice] IS NULL AND @original_ItemPrice IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([DateTimeOfPurchase] = @original_DateTimeOfPurchase) OR ([DateTimeOfPurchase] IS NULL AND @original_DateTimeOfPurchase IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_CartId" Type="Int32" />
                            <asp:Parameter Name="original_ItemName" Type="String" />
                            <asp:Parameter Name="original_ItemPrice" Type="Double" />
                            <asp:Parameter Name="original_Quantity" Type="Int32" />
                            <asp:Parameter Name="original_CustomerID" Type="String" />
                            <asp:Parameter Name="original_Address" Type="String" />
                            <asp:Parameter Name="original_DateTimeOfPurchase" Type="DateTime" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ItemName" Type="String" />
                            <asp:Parameter Name="ItemPrice" Type="Double" />
                            <asp:Parameter Name="Quantity" Type="Int32" />
                            <asp:Parameter Name="CustomerID" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="DateTimeOfPurchase" Type="DateTime" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Inactive" Name="Status" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ItemName" Type="String" />
                            <asp:Parameter Name="ItemPrice" Type="Double" />
                            <asp:Parameter Name="Quantity" Type="Int32" />
                            <asp:Parameter Name="CustomerID" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="DateTimeOfPurchase" Type="DateTime" />
                            <asp:Parameter Name="original_CartId" Type="Int32" />
                            <asp:Parameter Name="original_ItemName" Type="String" />
                            <asp:Parameter Name="original_ItemPrice" Type="Double" />
                            <asp:Parameter Name="original_Quantity" Type="Int32" />
                            <asp:Parameter Name="original_CustomerID" Type="String" />
                            <asp:Parameter Name="original_Address" Type="String" />
                            <asp:Parameter Name="original_DateTimeOfPurchase" Type="DateTime" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                    <!--Placed Order Grid View-->
                    <h1 class="text-gray">
                        <asp:Label ID="Label3" runat="server" Text="Placed Order"></asp:Label>
                     </h1>
                    <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CartId" 
                        DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="CartId" HeaderText="CartId" InsertVisible="False" 
                                ReadOnly="True" SortExpression="CartId" />
                            <asp:BoundField DataField="ItemName" HeaderText="ItemName" 
                                SortExpression="ItemName" />
                            <asp:BoundField DataField="ItemPrice" HeaderText="ItemPrice" 
                                SortExpression="ItemPrice" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                                SortExpression="Quantity" />
                            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" 
                                SortExpression="CustomerID" />
                            <asp:BoundField DataField="Address" HeaderText="Address" 
                                SortExpression="Address" />
                            <asp:BoundField DataField="DateTimeOfPurchase" HeaderText="DateTimeOfPurchase" 
                                SortExpression="DateTimeOfPurchase" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>


                    <!--Removed Item Data Connection-->
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                        ConflictDetection="CompareAllValues" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" 
                        DeleteCommand="DELETE FROM [Cart] WHERE [CartId] = @original_CartId AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND (([ItemPrice] = @original_ItemPrice) OR ([ItemPrice] IS NULL AND @original_ItemPrice IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL))" 
                        InsertCommand="INSERT INTO [Cart] ([ItemName], [ItemPrice], [Quantity], [CustomerID]) VALUES (@ItemName, @ItemPrice, @Quantity, @CustomerID)" 
                        OldValuesParameterFormatString="original_{0}" 
                        SelectCommand="SELECT [CartId], [ItemName], [ItemPrice], [Quantity], [CustomerID] FROM [Cart] WHERE ([Status] = @Status)" 
                        UpdateCommand="UPDATE [Cart] SET [ItemName] = @ItemName, [ItemPrice] = @ItemPrice, [Quantity] = @Quantity, [CustomerID] = @CustomerID WHERE [CartId] = @original_CartId AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND (([ItemPrice] = @original_ItemPrice) OR ([ItemPrice] IS NULL AND @original_ItemPrice IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_CartId" Type="Int32" />
                            <asp:Parameter Name="original_ItemName" Type="String" />
                            <asp:Parameter Name="original_ItemPrice" Type="Double" />
                            <asp:Parameter Name="original_Quantity" Type="Int32" />
                            <asp:Parameter Name="original_CustomerID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ItemName" Type="String" />
                            <asp:Parameter Name="ItemPrice" Type="Double" />
                            <asp:Parameter Name="Quantity" Type="Int32" />
                            <asp:Parameter Name="CustomerID" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Item Removed" Name="Status" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ItemName" Type="String" />
                            <asp:Parameter Name="ItemPrice" Type="Double" />
                            <asp:Parameter Name="Quantity" Type="Int32" />
                            <asp:Parameter Name="CustomerID" Type="String" />
                            <asp:Parameter Name="original_CartId" Type="Int32" />
                            <asp:Parameter Name="original_ItemName" Type="String" />
                            <asp:Parameter Name="original_ItemPrice" Type="Double" />
                            <asp:Parameter Name="original_Quantity" Type="Int32" />
                            <asp:Parameter Name="original_CustomerID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                    <!--Removed Item Grid View-->
                    <h1 class="text-gray">
                        <asp:Label ID="Label4" runat="server" Text="Cart Item"></asp:Label>
                     </h1>
                    <asp:GridView ID="GridView6" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CartId" 
                        DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="CartId" HeaderText="CartId" InsertVisible="False" 
                                ReadOnly="True" SortExpression="CartId" />
                            <asp:BoundField DataField="ItemName" HeaderText="ItemName" 
                                SortExpression="ItemName" />
                            <asp:BoundField DataField="ItemPrice" HeaderText="ItemPrice" 
                                SortExpression="ItemPrice" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                                SortExpression="Quantity" />
                            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" 
                                SortExpression="CustomerID" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>

				</div>
			</div>
		</div>

    </form>
</body>
</html>
