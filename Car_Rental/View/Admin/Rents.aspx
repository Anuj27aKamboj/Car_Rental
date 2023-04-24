<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Rents.aspx.cs" Inherits="Car_Rental.View.Admin.Rents" enableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-5"></div>
                    <div class="col-6">
                            <h3 class="text-warning p-lg-4">Rented Cars</h3>
                        <img src="../../Assets/img/carRental1.png"/>
                    </div>
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-9">
                        <form runat="server">
                            <asp:GridView runat="server" ID="RentList" Class="table table-warning table-hover" BorderColor="Orange" BorderStyle="Double" BorderWidth="0.2em" Width="100%" AutoGenerateSelectButton="True" OnSelectedIndexChanged="RentList_SelectedIndexChanged">
                            </asp:GridView>

                            <div class="form-group">
                                <input type="text" class="form-control" id="DelayTb" runat="server" />
                                <label class="form-check-label" for="exampleCheck1">Delay</label>

                                <input type="text" class="form-control" id="FineTb" runat="server" />
                                <label class="form-check-label" for="exampleCheck1">Fine</label>
                            </div>

                            <div class="form-group d-grid">
                                <label id="InfoMsg" runat="server" class="text-danger"></label>
                                <asp:Button type="submit" id="ReturnBtn" class="btn btn-danger btn-block" Text="Return" runat="server" OnClick="ReturnBtn_Click" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
