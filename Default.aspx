<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/StyleSheet.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
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
                      <li class="active"><a href="Default.aspx">Home</a></li>
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
                      </li>
                
                  </ul>

              </div>
          </div>
            <div>
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
             <div class="carousel-inner">
    <div class="item active">
      <img src="images/banner1.jpg" alt="Pixel 4a" width="100%" height="50%">
        <div class="carousel-caption">
            <h3>Pixel 4a banner 1</h3>
            <p>all time favourite phone</p>
            <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>
        </div>
    </div>

    <div class="item">
      <img src="images/banner2.jpg"alt="Nokia 7 plus" width="100%" height="50%">
         <div class="carousel-caption">
            <h3>Nokia 7 plus</h3>
            <p>all time favourite phone</p>
             <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>
        </div>
    </div>

    <div class="item">
      <img src="images/banner3.jpg" alt="Mi a2" width="100%" height="50%">
         <div class="carousel-caption">
            <h3>Mi a2</h3>
            <p>all time favourite phone</p>
             <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>
        </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
            </div>
                </div>
                <
   

    <div class="container center">
        <div class="row">
            <div class="col-lg-4">
                <img class="img-circle" src="images/pixel4a.jpg" alt="thumb" width="50%"height="50%" />
                <h2>Mobile Pixel 4a</h2>
                <p> he Pixel 4a and 4a (5G) resemble the Pixel 4, but have a polycarbonate unibody construction and Gorilla Glass 3 for the screen. Both devices are available in 'Just Black'. 'Clearly White' is exclusive to the Pixel 4a (5G),</p>
                <p> <a class="btn btn-default" href="#"role="button">View More</a></p>
            </div>
        
   
    
            <div class="col-lg-4">
                <img class="img-circle" src="images/nokia7plus.png" alt="thumb" width="50%" height="50%" />
                <h2>Mobile Mobile Nokia 7 plus</h2>
                <p>As the Nokia 7 Plus is an Android One device, it runs a near-stock version of the Android operating system.It was originally shipped with Android 8.0 Oreo;</p>
                <p> <a class="btn btn-default" href="#"role="button">View More</a></p>
            </div>
             
             <div class="col-lg-4">
                <img class="img-circle" src="images/mia2.jpg" alt="thumb" width="50%" height="50%" />
                <h2>Mobile Mobile Mi a2</h2>
                <p>The phone features a 5.84 inches Full HD+ (1080 x 2160 pixels resolution) 403ppi pixel density display, unimetal body, and Corning Gorilla Glass 5 protection. It is powered by a Qualcomm Snapdragon 660  </p>
                <p> <a class="btn btn-default" href="#"role="button">View More</a></p>
            </div>


        </div>
    </div>
        <footer>
            <div class="container">
                <p class="pull-right"><a href="Default.aspx">Back to top</a></p>
                <p>&copy; myphones.in &middot;<a href="Default.aspx">Home</a>&middot<a href="#">About</a>&middot<a href="#">Contact</a></a>&middot</a><a href="#">Products</a>&middot</p>
            </div>
        </footer>
    </form>

</body>
</html>
