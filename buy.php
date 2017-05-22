<!DOCTYPE html>
<html>
<head>
<title>FlipBooks.com|India's Largest Bookstore</title>

<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Deliccio Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/buy.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/user_credentials.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- FlexSlider -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script defer src="js/jquery.flexslider.js"></script>
<script type="text/javascript">
						$(window).load(function(){
						  $('.flexslider').flexslider({
							animation: "slide",
							start: function(slider){
							  $('body').removeClass('loading');
							}
						  });
						});
					  </script>
<!-- //FlexSlider -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
</head>
	
<body>
<!-- banner -->
 
	<div class="banner1">
		<div class="container">
			<div class="header-nav">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
						<div class="logo">
							<a class="navbar-brand" href="index.php">FlipBooks.com <span>India's Largest Online Book Store</span></a>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					  <ul class="nav navbar-nav">
						<li><a href="index.php">Home</a></li>
						<li><a href="search.php">Books</a></li>
						<li><a href="typo.php">SignUp</a></li>
						<li><a href="contact.html">Contact Us</a></li>
					  </ul>
					</div><!-- /.navbar-collapse -->
				</nav>
			</div>
		</div>
	</div>
<!-- //banner -->
<!--typography-page -->


<div class="container">
<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname="flipbooks";
	// Create connection to database
	$conn = mysqli_connect($servername, $username, $password,$dbname) or die ("Connection Error");
	if(isset($_POST['buySubmit']))
	{
		extract($_POST);
		$sql="select * from new_books n, publishers p where n.book_id='".$bookid."' and n.pub_id=p.pub_id";
		$result=mysqli_query($conn,$sql);
		$row = mysqli_fetch_assoc($result);
		$sql="select location from new_books n,books_supplied s,bookstore b where n.book_id='".$bookid."' and n.ISBN=s.ISBN and b.store_id=s.store_id";
		$result=mysqli_query($conn,$sql);
		$seller=mysqli_fetch_assoc($result);
		echo '
						<br />
						<div class="verify">Please Verify Before Buying</div>
						<br />
							
							
						<Table color="black" width="100%" class="spec_table">
							<th class="table_heading spec_table" colspan="2">BOOK DETAILS</th>
							<TR><TD class="specsKey" >Name</TD><TD  class="specsValue" >'.$row["title"].'</TD></TR>
							<TR><TD class="specsKey" >Author</TD><TD  class="specsValue" >'.$row["author"].'</TD></TR>
							<TR><TD class="specsKey" >Publisher</TD><TD  class="specsValue" >'.$row["name"].'</TD></TR>
							<TR><TD class="specsKey" >Language</TD><TD  class="specsValue" >'.$row["language"].'</TD></TR>
							<TR><TD class="specsKey" >Year</TD><TD  class="specsValue" >'.$row["year"].'</TD></TR>
							<TR><TD class="specsKey" >Seller Location</TD><TD  class="specsValue" >'.$seller["location"].'</TD></TR>
							<TR><TD class="specsKey" >ISBN</TD><TD  class="specsValue" >'.$row["ISBN"].'</TD></TR>
							<TR><TD class="specsKey" >Price</TD><TD  class="specsValue" > ₹	'.$row["price"].'</TD></TR>
						</Table>
						
						<form method="POST" action='.$_SERVER['PHP_SELF'].'>
							<input type="hidden" name="bookId" value="'.$bookid.'"/>
							<input type="submit" value="BUY" name="confirmBuy" class="buy_butt">
						</form>
						
						<br />
					';
	}
	elseif(isset($_POST['confirmBuy']))
	{
		extract($_POST);
		//Update, insert and delete operations for buying a book
		$sql="select store_id,quantity from bookstore_new_stock where book_id='".$bookId."'";
		$result=mysqli_query($conn,$sql);
		do
		{
			$row=mysqli_fetch_assoc($result);
		}while($row['quantity']<=0);
		$storeId=$row['store_id'];
		$sql="select ISBN,price from new_books where book_id='".$bookId."'";
		$result=mysqli_query($conn,$sql);
		$row=mysqli_fetch_assoc($result);
		$price=$row['price'];
		$isbn=$row['ISBN'];
		$billId=time();
		echo '
				<div style="position:relative; left: 25%">
					<div class="col-md-6 banner-info-left">
						
						 <div class="form">
							<h1>Register for Free</h1>
							<form action="'.$_SERVER['PHP_SELF'].'" method="post" style="font-size:15px;">
								
									  
									<input name="name" placeholder="Name" type="text" required autocomplete="off" style="margin-bottom:20px;margin-top:10px;" />
									<input name="email" type="email" placeholder="Email" required autocomplete="off" style="margin-bottom:20px;margin-top:10px;"/>
									<input name="mobile_no" placeholder="Mobile Number" type="number" required autocomplete="off" style="margin-bottom:20px;margin-top:10px;"/>
									<input name="age" placeholder="Age" type="number" required autocomplete="off" style="margin-bottom:20px;margin-top:10px;"/>
									<textarea name="address" placeholder="Address" style="margin-bottom:20px;margin-top:10px;font-size:15px"></textarea>
									<input name="pw" placeholder="Password" type="password" required autocomplete="off" style="margin-bottom:20px;margin-top:10px;" />
									<input type="hidden" name="bookId" value="'.$bookId.'"/>
									<input type="hidden" name="storeId" value="'.$storeId.'"/>
									<input type="hidden" name="billId" value="'.$billId.'"/> 
									<input type="hidden" name="isbn" value="'.$isbn.'"/> 
									<input type="hidden" name="price" value="'.$price.'"/>
									<input type="submit" value="Proceed to Checkout" class="button" name="user_submit"
												style="color: #fff;
														background-color: #803F5F;
														padding: 7px 0 6px;
															
														line-height: 25px;
														font-size: 18px;
														width: 100%;
														 
														border-radius: 4px;
														text-transform:uppercase;
														cursor: pointer;"

									/>
							</form>
						</div> 
					</div>
				</div>
		';
	}
	elseif($_POST['user_submit'])
	{
		extract($_POST);
		$sql="select * from customer where email_id='".$email."'";
		$result=mysqli_query($conn,$sql);
		if(mysqli_num_rows($result)===0)
		{
			$sql="select * from customer";
			$n=mysqli_num_rows(mysqli_query($conn,$sql))+1;
			$custId="c".$n;
			$sql="INSERT INTO customer(cust_id, mobile_no, email_id, name, age, address,password) VALUES ('".$custId."',".$mobile_no.",'".$email."','".$name."',".$age.",'".$address."','".$pw."')";
			echo $sql."<br/>";
			mysqli_query($conn,$sql) or die("Oops 1!!");
		}
		else
		{
			$custId=mysqli_fetch_assoc($result)['cust_id'];
			$sql="UPDATE customer SET mobile_no=".$mobile_no.",email_id='".$email."',name='".$name."',age='".$age."',address='".$address."',password='".$pw."' WHERE cust_id='".$custId."'";
			echo $sql."<br/>";
			mysqli_query($conn,$sql) or die("Oops 2!!");
		}
		$sql="INSERT INTO new_books_selling_bill(store_id,bill_id,cust_id,date_time,total_price) VALUES ('".$storeId."','".$billId."','".$custId."',CURRENT_TIMESTAMP,".$price.");";
		$sql.="INSERT INTO new_books_sold(store_id, bill_id, item_id, quantity) VALUES ('".$storeId."','".$billId."','".$bookId."',1);";
		echo $sql."<br/>";
		mysqli_multi_query($conn,$sql) or die("Transaction Failed<br/>");
	}
	else
		echo "OOPS!! Something Went Wrong";
?>
</div>

		

<!-- //banner -->
	<div class="footer">
		<div class="container">
			<div class="footer-row">
				<div class="col-md-3 footer-grids">
					<h1><a href="index.php">FlipBooks</a></h1>
					<p><a href="mailto:info@example.com">help@FlipBooks.com</a></p>
					<p>+1400 8888 2222</p>
				</div>
				<div class="col-md-3 footer-grids">
					<h3>Navigation</h3>					
					<ul>
						<li><a href="index.php">Home</a></li>
						<li><a href="#">About us</a></li>
						<li><a href="typo.php">Typo</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grids">
					<h3>Support</h3>
					<ul>
						<li><a href="search.php">Services</a></li>
						<li><a href="#">Help Center</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grids">	
					<h3>Newsletter</h3>
					<p>It was popularised in the 1960s <p>
					<form>					 
					    <input type="text" class="text" value="Enter Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Email';}">
						<input type="submit" value="Go">					 
				 </form>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="footer-bottom">
		<div class="container">		
			<p>Copyright © 2015 Deliccio. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>					
		</div>
	</div>
	

	
<!--//footer-->	
<!-- for bootstrap working -->
		<script src="js/bootstrap.js"> </script>
<!-- //for bootstrap working -->
</body>
</html>