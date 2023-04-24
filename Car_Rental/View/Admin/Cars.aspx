<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="Car_Rental.View.Admin.Cars" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>
                    <div class="col">
                            <h3 class="text-warning p-lg-4">Manage Cars</h3>
                        <img src="../../Assets/img/car33.png" height="130px"/></div>
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <form runat="server">
                            <div class="form-group">
                              <label for="ExampleInputEmail">License Number</label>
                              <input type="text" class="form-control" id="LNumberTb" placeholder="Enter Plate Number" runat="server"/>
                            </div>
                            <div class="form-group">
                                <label for="ExampleInputEmail">Brand</label>
                                <input type="text" class="form-control" id="BrandTb" placeholder="Enter The Car's Brand" runat="server"/>
                            </div>
                            <div class="form-group">
                                <label for="ExampleInputEmail">Model</label>
                                <input type="text" class="form-control" id="ModelTb" placeholder="Enter Model" runat="server"/>
                            </div>
                            <div class="form-group">
                                <label for="ExampleInputEmail">Price</label>
                                <input type="text" class="form-control" id="PriceTb" placeholder="Enter Price" runat="server"/>
                            </div>
                            <div class="form-group">
                                <label for="ExampleInputEmail">Color</label>
                                <input type="text" class="form-control" id="ColorTb" placeholder="Enter Color" runat="server"/>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Available</label>
                                <asp:DropDownList ID="AvailableCb" runat="server" class="form-control">
                                    <asp:ListItem>Available</asp:ListItem>
                                    <asp:ListItem>Booked</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <br />

                            <label id="ErrorMsg" class="text-danger" runat="server"></label><br />
                            <asp:Button type="submit" id="EditBtn" class="btn btn-danger" Text="Edit" runat="server" OnClick="EditBtn_Click"/>
                            <asp:Button type="submit" id="SaveBtn" class="btn btn-danger" Text="Save" runat="server" OnClick="SaveBtn_Click" />
                            <asp:Button type="submit" id="DeleteBtn" class="btn btn-danger" Text="Delete" runat="server" OnClick="DeleteBtn_Click"/>
                          </form>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <h1>Cars List</h1>
                <asp:GridView runat="server" ID="CarList" Class="table table-warning table-hover" BorderColor="Orange" BorderStyle="Double" BorderWidth="0.2em" AutoGenerateSelectButton="True" Width="100%" OnSelectedIndexChanged="CarList_SelectedIndexChanged">
                    
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>

