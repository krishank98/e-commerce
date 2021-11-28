<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Custome.css" rel="stylesheet" />
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
     <div>
    <div>
        <div class ="navbar navbar-default navbar-fixed-top " role ="navigation"  >
            <div class ="container ">
                <div class ="navbar-header">
                    <button type="button" class ="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class ="sr-only">Toggle navigation</span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>

                    </button>
                    <a class ="navbar-brand" href ="Default.aspx" ><span ><img src="icons/safeIcons.png" alt="MyEShoppoing" height ="30" /></span>MyEShopping </a>

                </div>
                <div class ="navbar-collapse collapse">
                    <ul class ="nav navbar-nav navbar-right">
                        <li ><a href ="Default.aspx">Home</a> </li>
                         <li ><a href="About.aspx">About</a> </li>
                        <li ><a href ="#">Contact US</a> </li>
                     
                        <li class ="drodown">
                            <a href ="#" class ="dropdown-toggle" data-toggle="dropdown">Products<b class ="caret"></b></a>
                            <ul class ="dropdown-menu ">
                                <li class ="dropdown-header ">Men</li>
                                <li role="separator" class ="divider "></li> 
                                <li> <a href ="#">Shirts</a></li>
                                <li> <a href ="#">Pants</a></li>
                                <li> <a href ="#">Denims</a></li>
                                <li role="separator" class ="divider "></li>
                                <li class ="dropdown-header ">Women</li>
                                <li role="separator" class ="divider "></li>
                                <li> <a href ="#">Top</a></li>
                                <li> <a href ="#">Leggings</a></li>
                                <li> <a href ="#">Denims</a></li>
                            </ul>

                        </li>
                        <li ><a href ="SignUp.aspx">SignUp</a> </li>
                        <li class ="active"><a href ="SignIn.aspx">SignIn</a> </li>
                    </ul>
                </div>
            </div>
        </div>
     </div>
         </div>
         
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        

        
         <div>
        <div class ="container ">
            <div class="form-horizontal">
                <h2>LoginLogin Form</h2>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="control-label " runat="server" Text="UserName"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtUser" CssClass="form-control" runat="server"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" CssClass="text-danger" ErrorMessage="Please enter username" ControlToValidate="txtUser"></asp:RequiredFieldValidator>
                       
                    </div>
                </div>

            
                <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="control-label " runat="server" Text="Password"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtPass" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>

                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" CssClass="text-danger" ErrorMessage="Please enter password" ControlToValidate="txtPass"></asp:RequiredFieldValidator>

                    </div>
                </div>

            
                <div class ="form-group">
                   
                    <div class ="col-md-3 ">
                         <asp:Label ID="Label3" CssClass ="control-label " runat="server" Text="Remember Me"></asp:Label>
                      
                         <asp:CheckBox ID="CheckBox1" runat="server" />
                        
          
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-3">
                        <div class="col-md-6">
                            <asp:Button CssClass="btn btn-success" runat="server" Text="Submit" OnClick="BtnLogin_Click" />
                            <asp:Button ID="errorButton" runat="server" />
                          <asp:HyperLink ID="hyperlink" CssClass="btn bg-danger" runat="server" NavigateUrl="~/ForgetPassword.aspx" >Forget Your Password</asp:HyperLink>
                        </div>
                    </div>

                </div>


            </div>

            </div>
        </div>
   
        <hr />
        <footer>
            <div>
             <p class ="pull-right "><a href ="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                <p>&copy;.in &middot; </a href ="Default.aspx">Home</a>&middot;<a href ="#">About</a>&middot;<a href ="#">Contact</a>&middot;<a href ="#">Products</a> </p>
            </div>
            
        </footer>

       
    </form>
</body>
</html>
