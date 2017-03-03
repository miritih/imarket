<?php
  //Declare variables and initialize
       $phoneNo = $argv[1]; //'Reg 13m01acs025';
       $fname = $argv[2]; //'254702792383'; //$FROM;
       $sname = $argv[3];
       $loc = $argv[4];
       $commod = $argv[5];
       $unitp = $argv[6];
       $amount = $argv[7];
       
    //connection
     $dbhost = 'localhost';
     $dbuser = 'root';
     $dbpass = 'technology';
     
     mysql_connect($dbhost, $dbuser, $dbpass) or die('Could not connect: ' . mysql_error());
     	mysql_select_db('kepha');
     	$sql = "INSERT INTO ozekimessageout VALUES('$phoneNo', '$fname', '$sname', '$loc', '$commod', '$unitp', '$amount');";
         mysql_query( $sql) or die('database unreachable');
      echo "\n";
?>

