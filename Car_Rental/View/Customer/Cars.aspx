<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="Car_Rental.View.Customer.Cars" %>

<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10"></div>
            <div class="col-md-2">
                <label id="CustName" runat="server"></label>
            </div>
        </div>

        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-4"><img src="../../Assets/img/car22.png" height="100%" style="width: auto; height: auto; margin-left: auto"/></div>
            <div class="col-md-4"></div>
        </div>
 
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col">
                <form runat="server">
                    <div class="row">
                        <div class="col-3"></div>
                        <div class="col-8"><h2 class="text-warning">Available Cars</h2></div>
                    </div>
                    <div class="col-md-8">
                        <asp:GridView runat="server" ID="CarList" Class="table table-warning table-hover" BorderColor="Orange" BorderStyle="Double" BorderWidth="0.2em" Width="100%" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CarList_SelectedIndexChanged">
                        </asp:GridView>
                    </div>
                    <div class="row">
                        <div class="col-4">
                            <div class="form-group">
                        <input type="date" class="form-control" id="ReturnDate" placeholder="Date" runat="server" required="required"/>
                    </div>
                        </div>
                        <div class="col-4">
                            <div class="form-group d-grid">
                                <label id="InfoMsg" runat="server" class="text-danger"></label>
                         <asp:Button type="submit" id="BookBtn" class="btn btn-warning btn-block" Text="Book" runat="server" OnClick="BookBtn_Click" />
                    </div>
                        </div>
                    </div>
                </form>
            </div>
        </div> 
        
    </div>
</asp:Content>
