<?php
include ('config.php');

$id = $_GET['id'];

if (isset($_POST['submit'])) {
	$u_NIK = $_POST['card_no'];
	$u_f_name = $_POST['user_first_name'];
	$u_l_name = $_POST['user_last_name'];
	$u_father = $_POST['user_father'];
	$u_ktp = $_POST['user_ktp'];
	$u_birthday = $_POST['user_dob'];
	$u_gender = $_POST['user_gender'];
	$u_email = $_POST['user_email'];
	$u_phone = $_POST['user_phone'];
	$u_type = $_POST['type'];
	$u_hospital = $_POST['hospital'];
	$u_village = $_POST['village'];
	$u_submission = $_POST['submission_ini'];
	$u_mother = $_POST['user_mother'];
	$u_status_ajuan = $_POST['status_ajuan'];

	$msg = "";
	$image = $_FILES['image']['name'];
	$target = "upload_images/" . basename($image);

	if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
		$msg = "Image uploaded successfully";
	} else {
		$msg = "Failed to upload image";
	}

	$update = "UPDATE data_pasien SET u_NIK='$u_NIK', u_f_name = '$u_f_name', u_l_name = '$u_l_name', u_father = '$u_father', u_mother = '$u_mother', u_ktp = '$u_ktp', u_birthday = '$u_birthday', u_gender = '$u_gender', u_email = '$u_email', u_phone = '$u_phone', u_type = '$u_type', u_hospital = '$u_hospital', u_village = '$u_village', u_submission = '$u_submission', status_ajuan = '$u_status_ajuan', image = '$image' WHERE id=$id ";
	$run_update = mysqli_query($con, $update);

	if ($run_update) {
		header('location:index.php');
	} else {
		echo "Data not update";
	}
}

?>