<?php

include ('config.php');
$id = $_GET['id'];
$delete = "DELETE FROM data_pasien WHERE id = $id";
$run_data = mysqli_query($con, $delete);

if ($run_data) {
	header('location:index.php');
} else {
	echo "Donot Delete";
}


?>