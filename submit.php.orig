<?php



   echo "<br>";

   // $conn = new mysqli("localhost", "root", "", "lamp_final_project");
   $conn = new mysqli("localhost", "root", "password", "ravendale_db");
   // print_r($conn);

   if ($conn->connect_error) {
      die("Failed to connect to MySQL Server " . $conn->connecterror);
   }

   $titl = $_POST['titl']; 
   $price = $_POST['price']; 
   $desc = $_POST['description']; 
   $subc = $_POST['Sub-Category'];
   $loc = $_POST['Location']; 

   // $results = $conn->query("INSERT INTO Posts (Title, Price, Description, SubCategory_ID, Location_ID) VALUES ('Intro To LAMP', 46.23)");  // SubCategory = 0 : books
   $results = $conn->query("INSERT INTO tPosts (Title, Price, Description, SubCategory_ID, Location_ID) VALUES ('$titl', '$price', '$desc', '$subc', '$loc')");  // SubCategory = 0 : books

   echo $conn->error;

   // echo "<table border=\"1\" style=\"width:100%\">";
   //while($row=$results->fetch_row()) {
   //   echo "<tr>";
   //   print "<td>";
   //   print $row[0];
   //   print "</td>";
   //   print "<td>";
   //   print $row[1];
   //   print "</td>";
   //   print "<td>";
   //   print $row[2];
   //   print "</td>";
   //   print "<td>";
   //   print $row[3];
   //   print "</td>";
   //   print "<td>";
   //   print $row[11];
   //   print "</td>";
   //   echo "</tr>";
   //}
   // echo "</table>";



   echo "<br>";
   echo "<br>";
   print "<a href=\"index.html\"> Go Back To Main</a>";

   $conn->close();

?>
