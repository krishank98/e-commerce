<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <br /> 
            <br /> 
            <br /> 
            <h2> Add Product</h2>
            <hr />
            
            <div class="from-group">
                <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Product Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtProductName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

            </div>

           <div class="from-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

            </div>

            <div class="from-group">
                <asp:Label ID="Label3" CssClass="col-md-2 control-label"  runat="server" Text="Brand"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>

            </div>

            <div class="from-group">
                <asp:Label ID="Label4" CssClass="col-md-2 control-label"  runat="server" Text="Brand"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>

            </div>

            <div class="from-group">
                <asp:Label ID="Label5" CssClass="col-md-2 control-label"  runat="server" Text="Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>

            </div>

            <div class="from-group">
                <asp:Label ID="Label6" CssClass="col-md-2 control-label"  runat="server" Text="SubCatgeory"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>

            </div>

            <div class="from-group">
                <asp:Label ID="Label7" CssClass="col-md-2 control-label"  runat="server" Text="Gender"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>

            </div>

             <div class="from-group">
                <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="Size"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtDynamicSize" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

            </div>

            <div class="from-group">
                <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label" Text="Description"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtDescription" TextMode="MultiLine" CssClass="form-control"  runat="server"></asp:TextBox>
                </div>

            </div>
           ///correct till here

            <div class="form-group">
                <asp:Label ID="label10" runat="server" CssClass="col-md-2 control-label" Text="Product Details" ></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtProductDetails" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="label11" runat="server" CssClass="col-md-2 control-label" Text="Material and Care" ></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtMatCare" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="label12" runat="server" CssClass="col-md-2 control-label" Text="UploadImage" ></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="FileUpload1"  CssClass="col-md-2 control-label" runat="server" />
                </div>

            </div> 

            
            <div class="form-group">
                <asp:Label ID="label13" runat="server" CssClass="col-md-2 control-label" Text="UploadImage" ></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="FileUpload2"  CssClass="col-md-2 control-label" runat ="server" />
                </div>

            </div> 
            
            <div class="form-group">
                <asp:Label ID="label14" runat="server" CssClass="col-md-2 control-label" Text="UploadImage" ></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="FileUpload3"  CssClass="col-md-2 control-label" runat="server" />
                </div>

            </div> 
            
            <div class="form-group">
                <asp:Label ID="label15" runat="server" CssClass="col-md-2 control-label" Text="UploadImage" ></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="FileUpload4" CssClass="col-md-2 control-label" runat="server" />
                </div>

            </div> 

            <div class="from-group">
                <asp:Label ID="Label16" CssClass="col-md-2 control-label" runat="server" Text="Free Delivery"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="chFD" runat="server" />
                </div>

            </div>

            <div class="from-group">
                <asp:Label ID="Label17" CssClass="col-md-2 control-label" runat="server" Text="30 days return"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="chRn"  runat="server" />
                </div>

            </div>
             
            <div class="form-group">
                <div class="col-md-2">
                    <div class="col-md-6">
                        <asp:Button ID="btnAdd" CssClass="btn btn-success" runat="server" Text="Add Product" OnClick="btn_addClick" />
                    </div>
                </div>
            </div>


        </div>
    </div>
</asp:Content>

