
<!DOCTYPE html>
<html>
<head>
<title>Check Availability</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
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
						
						function buy(id)
						{
							$("#b_id").val(id);
							$("#s").click();
						}
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
						<li class="active"><a href="search.php">Books</a></li>
						<li><a href="typo.php">SignUp</a></li>
						<li><a href="contact.html">Contact Us</a></li>
					  </ul>
					</div><!-- /.navbar-collapse -->
				</nav>
			</div>
		</div>
	</div>
<!-- //banner -->
<!-- services -->
	 <div class="services">
		<div style="margin-left:10em;" class="in-form">
			<h3>Check Availability-</h3><br/>
			<form name="search" method="POST" action="<?php echo $_SERVER['PHP_SELF']?>" style="width:400px;font-family: 'YesevaOne-Regular';color:#803F5F">
				<div class="container" style="float:left;">
					<input name="search" type="text" placeholder="FIND A BOOK" style="width:60%;"/>
					<select class="for-control" title="REFINE YOUR SEARCH" name="category_dropdown" style="height:40px">
						<option selected="selected" value="All">All Categories</option>
						<option value="Biography">Biography</option>
						<option value="Classic">Classic</option>
						<option value="Health">Health</option>
						<option value="History">History</option>
						<option value="Horror">Horror</option>
						<option value="Literature">Literature</option>
						<option value="Mystery">Mystery</option>
						<option value="Philosophy">Philosophy</option>
						<option value="Poetry">Poetry</option>
						<option value="Politics">Politics</option>
						<option value="Religion">Religion</option>
						<option value="Romance">Romance</option>
						<option value="Science">Science</option>
					</select>
					<select class="for-control" title="REFINE YOUR SEARCH" name="lang_dropdown" style="height:40px">
						<option selected="selected" value="All">All Languages</option>
						<option value="English">English</option>						
						<option value="French">French</option>
						<option value="Hindi">Hindi</option>
						<option value="Sanskrit">Sanskrit</option>
						<option value="Urdu">Urdu</option>
					</select>
					<input name="submit" type="submit" value="CHECK" style="    outline: none;
						padding: 12px 0;
						width: 100px;
						border: none;
						background: #803F5F;
						font-size: 16px;
						color: #fff;
						text-align: center;
						transition: 0.5s all;
						-webkit-transition: 0.5s all;
						-o-transition: 0.5s all;
						-moz-transition: 0.5s all;
						-ms-transition: 0.5s all;"/>
				</div>
			</form>
		</div>
		<div>
			<?php
				if(isset($_POST['submit']))
				{
					$servername = "localhost";
					$username = "root";
					$password = "";
					$dbname="flipbooks";
					// Create connection
					$conn = mysqli_connect($servername, $username, $password,$dbname) or die ("Connection Error");
					extract($_POST);
					if($category_dropdown=="All")
						$cat="category<>'All'";
					else
						$cat="category='".$category_dropdown."'";
					if($lang_dropdown=="All")
						$lang="language<>'All'";
					else
						$lang="language='".$lang_dropdown."'";
					$sql="select * from new_books where lower(title) like lower('%".$search."%') AND quantity>0 AND ".$cat." AND ".$lang."";
					$sql.=" union select * from new_books where lower(author) like lower('%".$search."%') AND quantity>0 AND ".$cat." AND ".$lang."";
					$sql.=" union select * from new_books where lower(isbn) like lower('%".$search."%') AND quantity>0 AND ".$cat." AND ".$lang."";
					/*
					$sql=" union select * from old_books where lower(title) like lower('%".$search."%') AND quantity>0 AND ".$cat." AND ".$lang."";
					$sql.=" union select * from old_books where lower(author) like lower('%".$search."%') AND quantity>0 AND ".$cat." AND ".$lang."";
					$sql.=" union select * from old_books where lower(isbn) like lower('%".$search."%') AND quantity>0 AND ".$cat." AND ".$lang."";
					*/
					$result=mysqli_query($conn,$sql);
					echo '<br/><br/><br/><div class="table-responsive" style="margin-left:10em;"> ';

					if ($result && mysqli_num_rows($result) > 0) {
						echo'<table class="table table-hover" style="width:75%" style="position:relative;padding-left:430px;font-family: YesevaOne-Regular;color:#67070a; text-align:center">
							<tr><th style="font-style:bold; color:#67070a">Book</th>
								<th style="font-style:bold; color:#67070a">Category</th>
								<th style="text-align:center; font-style:bold; color:#67070a">Edition</th>
								<th style="font-style:bold; color:#67070a">Language</th> 
								<th style="font-style:bold; color:#67070a">Price</th>
								<th><th>
							</tr>';
						// output data of each row
						while($row = mysqli_fetch_assoc($result)) {
							echo"<tr>
									<td><span style=\"color:#67070a\">" . $row["title"]. "</span> by ".$row["author"]."</td>
									<td style=\"color:#67070a\">".$row["category"]."</td>
									<td style=\"color:#67070a;text-align:center\">".$row["edition"]."</td>
									<td style=\"color:#67070a\">" . $row["language"]. " </td>
									<td style=\"color:#67070a\">" . "₹".$row["price"]. "</td>
									<td><input id=".$row["book_id"]." class=\"search_buy_button\" type=\"submit\" onclick=\"buy(id)\" value=\"BUY\" 
									style=\"color: #fff;
											background-color: #803F5F;
											padding: 0px 0 0px;
											text-shadow: 0 -1px 0 #4c9021;    
											line-height: 15px;
											font-size: 12px;
											width: 60px;
											background: linear-gradient(to bottom, #803F5F 0, #803F5F 100%); 
											border-radius: 4px;
											text-transform:uppercase;
											cursor: pointer;\"><td>
								</tr>";
						}
						echo'</table>';
					} else 
						echo "<br/><span style='margin-left:5em'>Oops! We couldn't find the book you wanted</span>";
					echo'</div>';
				}
			?>
		</div>
		<form id="form1" name="buying" method="POST" action="buy.php" style="display:none">
			<input type="text" name="bookid" id="b_id"/>
			<input type="submit" id="s" name="buySubmit"/>
		</form>
	</div> 	
<!-- for bootstrap working -->
		<script src="js/bootstrap.js"> </script>
<!-- //for bootstrap working -->

</body>
</html>