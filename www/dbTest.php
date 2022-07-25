<?php
$servername = "172.31.30.196";
$username = "AHSSchedule";
$password = "5p[h#!TTTK?8Q92r";
$database = "AHSSchedule";

$connection = new mysqli($servername, $username, $password, $database);

/* Verify Connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}
?>

<HTML>
    <BODY>
	<TABLE border="1">
	    <tr>
		<th >Course Code</th>
		<th>Semester Length</th>
		<th>Semester</th>
		<th>Description</th>
		<th>Dual Credit Daily Schedule</th>
		<th>Location</th>
		<th>Period Bit Map</th>
		<th>Level</th>
		<th>Categories</th>
		<th>Subcategories</th>
		    </tr>
	    <?php
	    printf("exceptions");
	    $query = "SELECT * FROM Courses";
	    if ($result = $connection->query($query)) {
		while ($row = $result->fetch_assoc()) {
		    printf("<TR>");
		    printf("<TD>%s</TD>", $row["courseCode"] ?? "missing");
		    printf("<TD>%s</TD>", $row["semesterLength"] ?? "missing");
		    printf("<TD>%s</TD>", $row["semester"] ?? "missing");
		    printf("<TD>%s</TD>", $row["description"] ?? "missing");
		    printf("<TD>%s</TD>", $row["dualCreditDailySchedule"] ?? "missing");
		    printf("<TD>%s</TD>", $row["location"] ?? "missing");
		    printf("<TD>%s</TD>", $row["periodBitmap"] ?? "missing");
		    printf("<TD>%s</TD>", $row["level"] ?? "missing");
		    printf("<TD>%s</TD>", $row["categories"] ?? "missing");
		    printf("<TD>%s</TD>", $row["subcategories"] ?? "missing");	    

		    printf("test");
		    }
	    }
	    ?>

        </TABLE>
    </BODY>
</HTML>
