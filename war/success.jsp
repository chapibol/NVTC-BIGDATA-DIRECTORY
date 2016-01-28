<%@ page import="directoryControls.*"%>
<%@ page import="directoryModel.*"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NVTC - Big Data Directory</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/main.css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<%String compName = (String)request.getAttribute("submittedCompanyName");
  long compId = (Long)request.getAttribute("companyId");
%>
</head>



<body>
	<nav class="navbar navbar-default navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">NVTC - Big Data Directory</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="index.html">Submit Company</a></li>
					<li><a href="browseCompanies.jsp">Browse<span class="sr-only">(current)</span></a></li>
				</ul>

				<form action="/SearchServlet" class="navbar-form navbar-right" role="search" method="post">
					<div class="form-group">
						<input type="text" class="form-control" id="searchBox" name="searchQuery" placeholder="Search the directory"/>
					</div>
					<button type="submit" class="btn btn-default">Search</button>
				</form>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav><!--End NavBar-->
	
	
	<!-- Retrieve object for later displaying of its info -->
	<div class="container"><!-- Holds all the content in this page -->
		<div class="row">
			<div class="col-md-10 col-sm-10 col-xs-12 col-md-offset-1 col-sm-offset-1"><!-- Limits the  -->				
						<div class="row">
							<div class="col-md-8 col-sm-8 col-xs-8 col-md-offset-2 col-sm-offset-2 col-xs-offset-2">
								<div class="panel panel-success">
									<div class="panel-heading text-center">
									    <h3 class="panel-title">Success!</h3>
									</div>
								   <div class="panel-body text-center">								  
								     <p class="text-info">Company: <a title="Click to view company details" href="/RetrieveCompanyServlet?cId=<%=compId %>"><%=compName%></a> has been submitted!</p>
								   </div>
								</div>
							</div>
						</div>
			</div><!--End of 10 column div with 1 offset-->
		</div><!--End Row within container(after navbar)-->
	</div><!--End container that holds all contents in between navbar and footer-->
	<hr>
	<footer class="text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<p class="infoGroup">
						<a href="http://www.nvtc.org" class="siteLink">Northern Virginia Technology Council</a> | 2214 Rock Hill Road, Suite 300, Herndon, VA 20170 | Phone: 703-904-7878 | Fax: 703-904-8008
					</p>
					<p class="infoGroup">Developed by <a href="http://www.gmu.edu" class="siteLink">George Mason University</a> IT 493 Capstone team, December 2015 | Franz Prowant, Luis Velasco, Raj Sheth, Vineet Jindal</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="../js/jquery-1.11.2.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../js/bootstrap.min.js"></script>
</body>
</html>