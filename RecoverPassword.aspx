<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RecoverPassword</title>
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

        <h2> Reset Password </h2>
        <hr />
        <hr />
        <div class="form-control">
         <asp:Label ID="message" CssClass="alert-success" Font-Italic ="true" runat="server" Text="FOR CHECKING PURPOSE" Visible="false"></asp:Label>
            </div>
        <div>

         <div class="center-page">
         <label class="col-xs-11">Password:</label>
         <div class="col-xs-11">
             <asp:TextBox ID="password_textbox" TextMode="Password"  runat="server" Class="form-control" placeholder="Enter you password" Visible="False"></asp:TextBox>
             <asp:RequiredFieldValidator ID="requiredFieldValidator3"  CssClass="text-danger"  ErrorMessage="Enter New Password" runat="server" ControlToValidate="password_textbox"></asp:RequiredFieldValidator>
           </div>
         <label class="col-xs-11" >Confirm password</label>
         <div class="col-xs-11" >
            
             <asp:TextBox ID="text_confirmpassword" TextMode="Password"  runat="server" Class="form-control" placeholder="Confirm Your Password" Visible="False"></asp:TextBox>
              <asp:RequiredFieldValidator ID="requiredFieldValidator2"  CssClass="text-danger"  ErrorMessage="Re Enter Password" runat="server" ControlToValidate="text_confirmpassword"></asp:RequiredFieldValidator>
              <asp:CompareValidator ID="CompareValidator2" CssClass="text-danger" runat="server" ErrorMessage="Password Not Match" ControlToCompare="password_textbox" ControlToValidate="text_confirmpassword"></asp:CompareValidator>
              <asp:Button ID="Reset" runat="server" CssClass="btn btn-success" Text="Button" OnClick="reset_password" Visible="False" />
     </div>

          <div class="center-page">
       
            </div>

          </div>
             

       
  </div>
 

    
           
    </form>
           
    <footer>
            <div>
             <p class ="pull-right ">
                 <a href ="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                <p>&copy;flip.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="#">About</a>&middot;<a href ="#">Contact</a>&middot;<a href ="#">Products</a> </p>
            </div>
            
        </footer>
    </body>
</html>

 


 