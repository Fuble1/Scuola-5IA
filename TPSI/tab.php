<?php
	$db = new mysqli("localhost", "root", "root", "scuola2324");
	$sql = "SELECT * FROM Uomo";
	$resultSET = $db->query($sql);
	$db->close();
	
	$jsonArray = Array();
	while($record = $resultSet->fetch_assoc())
		array_push($jsonArray, $record);
		
	echo(json_encode($jsonArray));
?>