<?php

include ('config.php');

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


	//image upload

	$msg = "";
	$image = $_FILES['image']['name'];
	$target = "upload_images/" . basename($image);

	if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
		$msg = "Image uploaded successfully";
	} else {
		$msg = "Failed to upload image";
	}

	$insert_data = "INSERT INTO student_data(u_NIK, u_f_name, u_l_name, u_father, u_ktp, u_birthday, u_gender, u_email, u_phone, u_type, u_hospital, u_village, u_submission, u_mother, status_ajuan,image,uploaded) VALUES ('$u_card','$u_f_name','$u_l_name','$u_father','$u_ktp','$u_birthday','$u_gender','$u_email','$u_phone','$u_type','$u_hospital','$u_village','$u_submission','$u_mother','$u_status_ajuan','$image',NOW())";
	$run_data = mysqli_query($con, $insert_data);

	if ($run_data) {
		$added = true;
	} else {
		echo "Data not insert";
	}

}

?>