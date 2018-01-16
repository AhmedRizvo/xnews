<?php 
require 'database.php';
$pdo = Database::connect();
$pdo->query("SET NAMES 'utf8'")
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Narrow Jumbotron Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="./bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./narrow-jumbotron.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills float-right">
            <li class="nav-item">
              <a class="nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="sign_in.php">Sign in</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="registration.php">Registration</a>
            </li>
          </ul>
        </nav>
        <h3 class="text-muted">XNEWS</h3>
      </div>

      <div class="jumbotron">
        <h1 class="display-3">Jumbotron heading</h1>
        <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
        <p><a class="btn btn-lg btn-success" href="#" role="button">Sign up today</a></p>
      </div>

      <div class="row marketing">
        
		<?php
			
                   $sql = 'SELECT * FROM news ORDER BY id DESC LIMIT 6';
				   $rowCntr = 0;
				   
				   echo '<div class="col-lg-6">';
				   
				   foreach ($pdo->query($sql) as $row) {
					   
					   echo '<h4>'. $row['title'].'</h4>';
					   echo '<p>'. $row['content'].'</p>';
					   
					   
					   if($rowCntr==2){
						   echo '</div><div class="col-lg-6">';
					   }
					   $rowCntr++;
					   
					}
					
					echo '</div>';
                   
		?>
          
     

        
      </div>

      <footer class="footer">
        <p>&copy; Company 2017</p>
      </footer>

    </div> s/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
