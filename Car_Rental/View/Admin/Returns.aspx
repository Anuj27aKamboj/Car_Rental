<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Returns.aspx.cs" Inherits="Car_Rental.View.Admin.Returns" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-4"><h3 class="text-warning">Car Returned</h3></div>
            <div class="col-md-3"></div>
        </div>
        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-3">
                <img src="../../Assets/img/carReturn.png" /></div>
            <div class="col-md-6"></div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <form runat="server">
                    <asp:GridView runat="server" id="ReturnList" Class="table table-warning table-hover" BorderColor="Orange" BorderStyle="Double" BorderWidth="0.2em" Width="100%" AutoGenerateSelectButton="True" >
                    </asp:GridView>
                </form>
            </div>
        </div>

    </div>
</asp:Content>
