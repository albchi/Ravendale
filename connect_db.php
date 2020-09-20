

   echo "<br>";
   $conn = new mysqli("localhost", "root", "password", "ravendale_db");
   // $conn = new mysqli("localhost", "root", "", "dbHW3");
   if ($conn->connect_error) {
      die("Failed to connect to MySQL Server " . $conn->connecterror);
   }
   print "Success to connect to MySQL Server";

   // $conn->close();
