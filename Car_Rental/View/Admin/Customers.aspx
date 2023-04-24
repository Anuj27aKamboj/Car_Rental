<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="Car_Rental.View.Admin.Customers" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>
                    <div class="col">
                            <h3 class="text-warning p-lg-4">Manage Customers</h3>
                        <img src="../../Assets/img/customer2.png" height="130px"/></div>
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <form runat="server">
                            <div class="form-group">
                              <label for="CustNameTb">Customer Name</label>
                              <input type="text" class="form-control" id="CustNameTb" placeholder="Enter Customer's Name" runat="server">
                            </div>
                            <div class="form-group">
                                <label for="AddTb">Customer Address</label>
                                <input type="text" class="form-control" id="AddTb" placeholder="Enter Customer's Address" runat="server">
                            </div>
                            <div class="form-group">
                                <label for="PhoneTb">Customer Phone</label>
                                <input type="text" class="form-control" id="PhoneTb" placeholder="Enter Phone" runat="server">
                            </div>
                            <div class="form-group">
                                <label for="PasswordTb">Customer Password</label>
                                <input type="text" class="form-control" id="PasswordTb" placeholder="Enter Password" runat="server">
                            </div>

                             <label id="ErrorMsg" class="text-danger" runat="server"></label><br />
                            <asp:Button type="submit" id="EditBtn" class="btn btn-danger" Text="Edit" runat="server" OnClick="EditBtn_Click"/>
                            <asp:Button type="submit" id="SaveBtn" class="btn btn-danger" Text="Save" runat="server" OnClick="SaveBtn_Click" />
                            <asp:Button type="submit" id="DeleteBtn" class="btn btn-danger" Text="Delete" runat="server" OnClick="DeleteBtn_Click"/>
                          </form>
                    </div>
                </div>
            </div>

            <div class="col-md-8">
                <h1>Customers List</h1>
                <asp:GridView runat="server" ID="CustomerList" Class="table table-warning table-hover" BorderColor="Orange" BorderStyle="Double" BorderWidth="0.2em" AutoGenerateSelectButton="True" Width="100%" OnSelectedIndexChanged="CustomerList_SelectedIndexChanged">
                    
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
