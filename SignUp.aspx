<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
     <link href="css/StyleSheet.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <div>
          <div class="navbar navbar-default navbar-fixed-top" role="navigation">
              <div class="container">
                  <div class="navbar-header">
                      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                       <span class="sr-only">Toggle Navigation
                       </span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                      </button>
                    <a class="navbar-brand" href="Default.aspx">Flipkart</a>
                  </div>
              </div>
              <div class="navbar-collapse collapse">
                  <ul class="nav navbar-nav navbar-right">
                      <li ><a href="Default.aspx">Home</a></li>
                      <li><a href="#">About</a></li>
                      <li><a href="#">Contact us</a></li>
                       <li><a href="#">Blog</a></li>
                      <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></b></a>
                          <ul class="dropdown-menu">
                              <li class="dropdown-header">Men</li>
                              <li role="separator" class="divider"></li>
                              <li><a href="#">Shirts</a></li>
                              <li><a href="#">Pants</a></li>
                              <li><a href="#">Shoes</a></li>
                              <li><a href="#">Watch</a></li>
                          <li role="separator" class="divider"></li>
                              <li class="dropdown-header">Women</li>
                              <li role="separator" class="divider"></li>
                              <li><a href="#">Top</a></li> 
                              <li><a href="#">Leggings</a></li>
                              <li><a href="#">Denim</a></li>
              

                          </ul>
                          <li><a href="SignUp.aspx">Signup</a></li>
                          <li><a href="SignIn.aspx">Login</a></li>
                      
                
                  </ul>

              </div>

        </div>
     <!--------signup start------->


     <div class="center-page">
         <label class="col-xs-11">Username:</label>
         <div class="col-xs-11">
         <asp:TextBox ID="txtUname" runat="server" Class="form-control" placeholder="Enter Your Username"></asp:TextBox>
         </div>
         <label class="col-xs-11">Password:</label>
         <div class="col-xs-11">
             <asp:TextBox ID="txtPass" TextMode="Password"  runat="server" Class="form-control" placeholder="Enter you password"></asp:TextBox>
            </div>
         <label class="col-xs-11">Confirm password</label>
         <div class="col-xs-11">
             <asp:TextBox ID="txtCPass" TextMode="Password"  runat="server" Class="form-control" placeholder="Confirm Your Password"></asp:TextBox>
     </div>
         <label class="col-xs-11">Your Full Name</label>
         <div class="col-xs-11">
             <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="Enter your full name"></asp:TextBox>
         </div>
         <label class="col-xs-11">Enter your Email</label>
         <div class="col-xs-11">
             <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter your Email"></asp:TextBox>
         </div>
         <label class="col-xs-11"></label>
         <div class="col-xs-11"> 
            
             
            
         </div>
          <asp:Button ID="textsignup" Class="btn btn-success" runat="server" Text="SignUP" OnClick="txtsingnup_Click" />
         <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>

         </div>

     <!--------signup end------->
     <footer class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="Default.aspx">Back to top</a></p>
                <p>&copy; myphones.in &middot;<a href="Default.aspx">Home</a>&middot<a href="#">About</a>&middot<a href="#">Contact</a></a>&middot</a><a href="#">Products</a>&middot</p>
            </div>
        </footer>
            </div>
          
         </form>
</body>
</html>
