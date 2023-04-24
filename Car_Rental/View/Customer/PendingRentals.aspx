<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="PendingRentals.aspx.cs" Inherits="Car_Rental.View.Customer.PendingRentals" %>

<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col"></div>
            <div class="col">
                <h2>Your Pending Rentals</h2>
            </div>
            <div class="col"></div>
        </div>
         <div class="row">
            <div class="col-5"></div>
            <div class="col-3">
                <img src="../../Assets/img/carPending1.png"/>
            </div>
            <div class="col-4"></div>
        </div>
        <div class="row">
            <div class="col-12">
                <form runat="server">
                    <div class="col-md-12">
                        <asp:GridView runat="server" ID="CarList" Class="table table-warning table-hover" BorderColor="Orange" BorderStyle="Double" BorderWidth="0.2em" Width="100%">
                        </asp:GridView>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
