s<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>



<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/style.css">




</head>
<body>


<%@include file="templates/Header.jsp" %>
<div class="container">

<div class="carousel slide" id="carousel-example-generic">
<ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">

        <!-- First slide -->
        <div class="item active">
      <img src="resources/image/39687376-learning-wallpapers.jpg" alt="...">
          <div class="carousel-caption">
            <h3><i>
             “A place is not really a place without a bookstore.”


            </i></h3>
            <h3><i>
              Shop Now....
            </i></h3>
            <button class="btn btn-primary btn-lg">Product</button>
          </div>
        </div> <!-- /.item -->

        <!-- Second slide -->
        <div class="item">
		      <img src="resources/image/protect-books-self-storage.jpg" alt="...">
		
          <div class="carousel-caption">
            <h3 class="icon-container">
              <span class="glyphicon glyphicon-heart" style="color:red; font-size:40px" ></span>
            </h3>
            <h3><i>
              “There is no friend as loyal as a book.”
            </i></h3>
			            <h3><i>
              Shop Now....
            </i></h3>
            <button class="btn btn-primary btn-lg">Product</button>
          </div>
        </div><!-- /.item -->

        <!-- Third slide -->
        <div class="item">
		 <img src="resources/image/books_flowers_blur_108950_1920x1080.jpg" alt="...">
          <div class="carousel-caption">
            <h3 class="icon-container">
              <span class="glyphicon glyphicon-book" style="color:blue; font-size:40px" ></span>
            </h3>
            <h3><i>
              “A room without books is like a body without a soul.”
            </i></h3>
            <button class="btn btn-primary btn-lg">Product</button>
          </div>
        </div><!-- /.item -->

      </div><!-- /.carousel-inner -->

      <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>



</div>

<!---main slider-->

<!---jumbotron--->

<div class="row" id="jumbo">
 <div class="jumbotron">
 <img class="pull-right" src="resources/image/over_your_cities-_Ciprian_Muresan,_Untitled_(Shopping_Cart),_2010.jpg" alt="" id="jb">
 
    <h2><center><b><i><u>SHOP VERITY OF BOOKS WITH BOOKSMELLA</u></i></b></h2> 
    <p id="jpara"><i>now shop different type of books with booksmella. it is the online store where you cn buy any type of books with affordable prices.
	we ensure you to provide best product and promise you to provide ontime dilevery....</i></p> 
  </div>
 </div>

<!----jumbotron--->

<!----grid-->
<div class="row">
<div class="col-md-4">

<div class="thumbnail">
<img src="resources/image/religious book/download (2).jpg" alt="" height=100px width=200px id="im">
<div class="caption">
<h3><u>Relegious Boooks</u></h3>
<p>religious book lovers can buy verity of books here...</p>

</div>
</div>
</div>

<div class="col-md-4">
<div class="thumbnail">
<img src="resources/image/novels/o-BEST-SUMMER-BOOKS-2013-facebook.jpg" alt="" height=100px width=200px id="im">
<div class="caption">
<h3><u>Latest Novels</u></h3>
<p>this section is for the novels lovers....</p>

</div>
</div>


</div>


<div class="col-md-4">

<div class="thumbnail">
<img src="resources/image/educational/13362-0309254116-450.jpg" alt="" height=100px width=200px id="im">
<div class="caption">
<h3><u>Educational Books</u></h3>
<p>Enhance your Knowledge by buying these books</p>

</div>
</div>


</div>
<div>

<!----grid--->




</div>



<%@include file="templates/Footer.jsp" %>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>




</body>
</html>