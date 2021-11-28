<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Password</title>
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
                      
                        
                    </ul>
                </div>
            </div>
        </div>
     </div>
         </div>
        <br />
        <br />
        <br />
        
         <hr />
        <div class="container">
            <div class="form-horizontal">
                <div>
                      <h2>Recovery Password</h2>
                </div>
               <div>
              
                <h2>We will send you recovery email</h2>
                   </div>
                <div class="form-group">
                    <div class="col-lg-3">
                    <asp:Label Text ="Email" runat="server" ></asp:Label>
                        <asp:TextBox ID="recovery_email" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="requiredFieldValidatorEmail"  CssClass="text-danger"  ErrorMessage="Enter Your Email" runat="server" ControlToValidate="recovery_email"></asp:RequiredFieldValidator>

                        </div>
                </div>
                <div class="form-control">
                    <div class="col-lg-2">
                    <div class="col-lg-6">
                        <asp:Button ID="submitEmail" CssClass="btn- btn-success" runat="server" Text="Send" OnClick="recovery_passLink" />
                        <asp:Label ID="idResetPass" CssClass="text-danger" runat="server" Text="Check"></asp:Label>
                    </div>
                </div>
                    </div>
            </div>
        </div>
        <footer>
            <div>
             <p class ="pull-right "><a href ="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                <p>&copy;.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="#">About</a>&middot;<a href ="#">Contact</a>&middot;<a href ="#">Products</a> </p>
            </div>
            
        </footer>
    </form>
</body>
</html>
