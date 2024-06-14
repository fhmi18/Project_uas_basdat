<?php
// Initialize the session
session_start();

// Check if the user is logged in, if not then redirect him to login page
if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
	header("location: login.php");
	exit;
}
// database connection
include ('config.php');

$added = false;


//Add  new student code 

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

	$insert_data = "INSERT INTO data_pasien(u_NIK, u_f_name, u_l_name, u_father, u_ktp, u_birthday, u_gender, u_email, u_phone, u_type, u_hospital, u_village, u_submission, u_mother, status_ajuan,image,uploaded) VALUES ('$u_NIK','$u_f_name','$u_l_name','$u_father','$u_ktp','$u_birthday','$u_gender','$u_email','$u_phone','$u_type','$u_hospital','$u_village','$u_submission','$u_mother','$u_status_ajuan','$image',NOW())";
	$run_data = mysqli_query($con, $insert_data);

	if ($run_data) {
		$added = true;
	} else {
		echo "Data not insert";
	}

}



?>







<!DOCTYPE html>
<html>

	<head>
		<title>Rumah Sakit Harapan</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

		<link rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	</head>

	<body>

		<div class="container">
			<a href="https://rsharapansehati.co.id/tentang-kami/" target="_blank"><img
					src="https://www.rspkt.com/sites/rspkt.com/files/field/image/MUP%20fix.jpg" alt=""
					width="100px"></a><br>
			<hr>

			<!-- adding alert notification  -->
			<?php
			if ($added) {
				echo "
			<div class='btn-success' style='padding: 15px; text-align:center;'>
				data pasien berhasil.
			</div><br>
		";
			}

			?>





			<a href="logout.php" class="btn btn-success"><i class="fa fa-lock"></i> Logout</a>
			<button class="btn btn-success" type="button" data-toggle="modal" data-target="#myModal">
				<i class="fa fa-plus"></i> Daftar Pasien
			</button>
			<hr>
			<table class="table table-bordered table-striped table-hover" id="myTable">
				<thead>
					<tr>
						<th class="text-center" scope="col">S.L</th>
						<th class="text-center" scope="col">Name</th>
						<th class="text-center" scope="col">NIK</th>
						<th class="text-center" scope="col">Phone</th>
						<th class="text-center" scope="col">status_ajuan</th>
						<th class="text-center" scope="col">View</th>
						<th class="text-center" scope="col">Edit</th>
						<th class="text-center" scope="col">Delete</th>
					</tr>
				</thead>
				<?php

				$get_data = "SELECT * FROM data_pasien order by 1 desc";
				$run_data = mysqli_query($con, $get_data);
				$i = 0;
				while ($row = mysqli_fetch_array($run_data)) {
					$sl = ++$i;
					$id = $row['id'];
					$u_NIK = $row['u_NIK'];
					$u_f_name = $row['u_f_name'];
					$u_l_name = $row['u_l_name'];
					$u_phone = $row['u_phone'];
					$u_status_ajuan = $row['status_ajuan'];

					$image = $row['image'];

					echo "

				<tr>
				<td class='text-center'>$sl</td>
				<td class='text-left'>$u_f_name   $u_l_name</td>
				<td class='text-left'>$u_NIK</td>
				<td class='text-left'>$u_phone</td>
				<td class='text-center'>$u_status_ajuan</td>
			
				<td class='text-center'>
					<span>
					<a href='#' class='btn btn-success mr-3 profile Pasien' data-toggle='modal' data-target='#view$id' title='Prfile'><i class='fa fa-address-card-o' aria-hidden='true'></i></a>
					</span>
					
				</td>
				<td class='text-center'>
					<span>
					<a href='#' class='btn btn-warning mr-3 edituser' data-toggle='modal' data-target='#edit$id' title='Edit'><i class='fa fa-pencil-square-o fa-lg'></i></a>

					     
					    
					</span>
					
				</td>
				<td class='text-center'>
					<span>
					
						<a href='#' class='btn btn-danger deleteuser' title='Delete'>
						     <i class='fa fa-trash-o fa-lg' data-toggle='modal' data-target='#$id' style='' aria-hidden='true'></i>
						</a>
					</span>
					
				</td>
			</tr>


        		";
				}

				?>



			</table>
			<form method="post" action="export.php">
				<input type="submit" name="export" class="btn btn-success" value="Export" />
			</form>
		</div>


		<!---Add in modal---->

		<!-- Modal -->
		<div id="myModal" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<center><img src="https://www.rspkt.com/sites/rspkt.com/files/field/image/MUP%20fix.jpg"
								width="100px" height="70px" alt=""></center>
					</div>
					<div class="modal-body">
						<form method="POST" enctype="multipart/form-data">

							<!-- This is test for New rumah sakit Activate Form  -->
							<!-- This is Address with email id  -->
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">NIK</label>
									<input type="text" class="form-control" name="card_no"
										placeholder="Enter 14-digit NIK" minlegth="14" maxlength="14" required
										autocomplete="off">
								</div>

								<div class="form-group col-md-6">
									<label for="inputPassword4">Mobile No.</label>
									<input type="tel" class="form-control" name="user_phone"
										placeholder="Enter digit Phone" maxlength="15" required
										pattern="(\+62|62|0)8[1-9][0-9]{6,9}$">
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="firstname">First Name</label>
									<input type="text" class="form-control" name="user_first_name"
										placeholder="Enter First Name" required autocomplete="off">
								</div>
								<div class="form-group col-md-6">
									<label for="lastname">Last Name</label>
									<input type="text" class="form-control" name="user_last_name"
										placeholder="Enter Last Name" required autocomplete="off">
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="fathername">Father's Name</label>
									<input type="text" class="form-control" name="user_father"
										placeholder="Enter First Name" required autocomplete="off">
								</div>
								<div class="form-group col-md-6">
									<label for="mothername">Mother's Name</label>
									<input type="text" class="form-control" name="user_mother"
										placeholder="Enter Last Name" required autocomplete="off">
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="email">Email</label>
									<input type="email" class="form-control" name="user_email"
										placeholder="Enter Email id" required autocomplete="off">
								</div>
								<div class="form-group col-md-6">
									<label for="Nama ktp">KTP</label>
									<input type="text" class="form-control" name="user_ktp" maxlength="20"
										placeholder="Enter max 20-digit KTP. " required autocomplete="off">
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputtype" required>Gender</label>
									<select id="inputtype" name="user_gender" class="form-control">
										<option selected>Choose...</option>
										<option>Male</option>
										<option>Female</option>
									</select>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Date of Birth</label>
									<input type="date" class="form-control" name="user_dob" placeholder="Date of Birth"
										required>
								</div>
							</div>


							<div class="form-group">
								<label for="inputAddress">Alamat</label>
								<input type="text" class="form-control" name="village" placeholder="Jalan Batu Alam"
									required autocomplete="off">
							</div>

							<div class="form-group">
								<label for="inputAddress2">Bulan Pengajuan:</label>
								<select class="form-control" name="submission_ini" required>
									<option value="Januari">Januari</option>
									<option value="February">February</option>
									<option value="Maret">Maret</option>
									<option value="April">April</option>
									<option value="Mei">Mei</option>
									<option value="Juni">Juni</option>
									<option value="Juli">Juli</option>
									<option value="Agustus">Agustus</option>
									<option value="September">September</option>
									<option value="Oktober">Oktober</option>
									<option value="November">November</option>
									<option value="Desember">Desember</option>
								</select>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputUni">Rumah Sakit Tujuan</label>
									<input type="text" class="form-control" name="hospital" required autocomplete="off">
								</div>

								<div class="form-group col-md-6">
									<label for="inputtype">Jenis Pasien</label>
									<select name="type" class="form-control">
										<option selected>Choose...</option>
										<option value='BPJS'>BPJS</option>
										<option value='MANDIRI'>MANDIRI</option>
									</select>
								</div>

							</div>

							<div class="form-group">
								<label for="inputAddress">status_ajuan</label>
								<input type="text" class="form-control" name="status_ajuan" value="belum_diverifikasi"
									readonly>
							</div>

							<div class="form-group">
								<label> Upload KK/KTP</label>
								<input type="file" name="image" class="form-control">
							</div>
							<input type="submit" name="submit" class="btn btn-info btn-large" value="Submit">

						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>


		<!------DELETE modal---->




		<!-- Modal -->
		<?php

		$get_data = "SELECT * FROM data_pasien";
		$run_data = mysqli_query($con, $get_data);

		while ($row = mysqli_fetch_array($run_data)) {
			$id = $row['id'];
			echo "

<div id='$id' class='modal fade' role='dialog'>
  <div class='modal-dialog'>

    <!-- Modal content-->
    <div class='modal-content'>
      <div class='modal-header'>
        <button type='button' class='close' data-dismiss='modal'>&times;</button>
        <h4 class='modal-title text-center'>Are you want to sure??</h4>
      </div>
      <div class='modal-body'>
        <a href='delete.php?id=$id' class='btn btn-danger' style='margin-left:250px'>Delete</a>
      </div>
      
    </div>

  </div>
</div>


	";

		}


		?>


		<!-- View modal  -->
		<?php

		// <!-- profile pasien modal start -->
		$get_data = "SELECT * FROM data_pasien";
		$run_data = mysqli_query($con, $get_data);

		while ($row = mysqli_fetch_array($run_data)) {
			$id = $row['id'];
			$card = $row['u_NIK'];
			$name = $row['u_f_name'];
			$name2 = $row['u_l_name'];
			$father = $row['u_father'];
			$mother = $row['u_mother'];
			$gender = $row['u_gender'];
			$email = $row['u_email'];
			$ktp = $row['u_ktp'];
			$Bday = $row['u_birthday'];
			$phone = $row['u_phone'];
			$address = $row['u_type'];
			$village = $row['u_village'];
			$submission = $row['u_submission'];
			$hospital = $row['u_hospital'];
			$type = $row['u_type'];
			$time = $row['uploaded'];

			$image = $row['image'];
			echo "

		<div class='modal fade' id='view$id' tabindex='-1' role='dialog' aria-labelledby='userViewModalLabel' aria-hidden='true'>
    <div class='modal-dialog'>
        <div class='modal-content'>
            <div class='modal-header'>
                <h5 class='modal-title' id='exampleModalLabel'>Profile Pasien <i class='fa fa-user-circle-o' aria-hidden='true'></i></h5>
                <button type='button' class='close' data-dismiss='modal' aria-label='Close'>
                    <span aria-hidden='true'>&times;</span>
                </button>
            </div>
            <div class='modal-body'>
                <div class='container' id='profilePasien'>
                    <div class='row'>
                        <div class='col-12'>
                            <img src='upload_images/$image' alt='' class='img-fluid mb-3' style='max-width: 500px; height: auto;'>
                        </div>
                        <div class='col-sm-8 col-md-10'>
                            <h3 class='text-primary'>$name $name2</h3>
                            <p class='text-secondary'>
                                <strong>Jenis Pasien:</strong> $type<br>
                                <strong>Rumah Sakit Tujuan:</strong> $hospital<br>
                                <strong>Bulan Pengajuan:</strong> $submission<br>
                                <strong>KTP:</strong> $ktp<br>
                                <i class='fa fa-venus-mars' aria-hidden='true'></i> $gender<br>
                                <i class='fa fa-envelope-o' aria-hidden='true'></i> $email<br>
                                <i class='fa fa-home' aria-hidden='true'></i> Address: $village, $submission, $mother - $father<br>
								 <i class='fa fa-id-card' aria-hidden='true'></i> $card<br>
                            	<i class='fa fa-phone' aria-hidden='true'></i> $phone<br>
                            	Issue Date : $time
                            </p>
                        </div>	
                    </div>
                </div>
            </div>
            <div class='modal-footer'>
                <button type='button' class='btn btn-secondary' data-dismiss='modal'>Close</button>
            </div>
        </div>
    </div>
</div>



    ";
		}


		// <!-- profile Pasien modal end -->
		

		?>





		<!----edit Data--->

		<?php

		$get_data = "SELECT * FROM data_pasien";
		$run_data = mysqli_query($con, $get_data);

		while ($row = mysqli_fetch_array($run_data)) {
			$id = $row['id'];
			$card = $row['u_NIK'];
			$name = $row['u_f_name'];
			$name2 = $row['u_l_name'];
			$father = $row['u_father'];
			$mother = $row['u_mother'];
			$gender = $row['u_gender'];
			$email = $row['u_email'];
			$ktp = $row['u_ktp'];
			$Bday = $row['u_birthday'];
			$phone = $row['u_phone'];
			$address = $row['u_type'];
			$village = $row['u_village'];
			$submission = $row['u_submission'];
			$hospital = $row['u_hospital'];
			$type = $row['u_type'];
			$status_U = $row['status_ajuan'];
			$time = $row['uploaded'];
			$image = $row['image'];
			echo "

<div id='edit$id' class='modal fade' role='dialog'>
  <div class='modal-dialog'>

    <!-- Modal content-->
    <div class='modal-content'>
      <div class='modal-header'>
             <button type='button' class='close' data-dismiss='modal'>&times;</button>
             <h4 class='modal-title text-center'>Edit your Data</h4> 
      </div>

      <div class='modal-body'>
        <form action='edit.php?id=$id' method='post' enctype='multipart/form-data'>

		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputEmail4'>NIK</label>
		<input type='text' class='form-control' name='card_no' placeholder='Enter 14-digit NIK' maxlength='14' value='$card' required>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>Mobile No.</label>
		<input type='phone' class='form-control' name='user_phone' placeholder='Enter digit Phone' maxlength='15' value='$phone' required>
		</div>
		</div>
		
		
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='firstname'>First Name</label>
		<input type='text' class='form-control' name='user_first_name' placeholder='Enter First Name' value='$name'>
		</div>
		<div class='form-group col-md-6'>
		<label for='lastname'>Last Name</label>
		<input type='text' class='form-control' name='user_last_name' placeholder='Enter Last Name' value='$name2'>
		</div>
		</div>
		
		
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='fathername'>Father's Name</label>
		<input type='text' class='form-control' name='user_father' placeholder='Enter First Name' value='$father'>
		</div>
		<div class='form-group col-md-6'>
		<label for='mothername'>Mother's Name</label>
		<input type='text' class='form-control' name='user_mother' placeholder='Enter Last Name' value='$mother'>
		</div>
		</div>
		
		
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='email'>Email Id</label>
		<input type='email' class='form-control' name='user_email' placeholder='Enter Email id' value='$email'>
		</div>
		<div class='form-group col-md-6'>
		<label for='Nama ktp'>ktp</label>
		<input type='text' class='form-control' name='user_ktp' maxlength='20' placeholder='Enter max 20-digit ktp ' value='$ktp'>
		</div>
		</div>
		
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputtype'>Gender</label>
		<select id='inputtype' name='user_gender' class='form-control' value='$gender'>
		  <option selected>$gender</option>
		  <option>Male</option>
		  <option>Female</option>
		</select>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputPassword4'>Date of Birth</label>
		<input type='date' class='form-control' name='user_dob' placeholder='Date of Birth' value='$Bday'>
		</div>
		</div>		
		
		<div class='form-group'>
		<label for='inputAddress'>Village</label>
		<input type='text' class='form-control' name='village' placeholder='Jalan Batu Alam' value='$village'>
		</div>
		<div class='form-group'>
		<label for='inputAddress2'>submission saat ini</label>
		<input type='text' class='form-control' name='submission_ini' placeholder='submission saat ini' value='$submission'>
		</div>
		<div class='form-row'>
		<div class='form-group col-md-6'>
		<label for='inputUni'>Rumah sakit Tujuan</label>
		<input type='text' class='form-control' name='hospital' value='$hospital'>
		</div>
		<div class='form-group col-md-6'>
		<label for='inputtype'>Jenis Pasien</label>
		<select name='type' class='form-control'>
		  <option>$type</option>
		  <option value='BPJS'>BPJS</option>
		  <option value='MANDIRI'>MANDIRI</option>
		</select>
		</div>
		</div>

		
		<div class='form-group'>
		<label for='inputAddress'>blum dikonfirmasi</label>
		<input type='text' class='form-control' name='status_ajuan' value='belum_diverifikasi' readonly>
		</div>
        	

        	<div class='form-group'>
        		<label>Image</label>
        		<input type='file' name='image' class='form-control'>
        		<img src = 'upload_images/$image' style='width:50px; height:50px'>
        	</div>

        	
        	
			 <div class='modal-footer'>
			 <input type='submit' name='submit' class='btn btn-info btn-large' value='Submit'>
			 <button type='button' class='btn btn-secondary' data-dismiss='modal'>Close</button>
		 </div>


        </form>
      </div>

    </div>

  </div>
</div>


	";
		}


		?>

		<script src="//cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
		<script>
			$(document).ready(function () {
				$('#myTable').DataTable();

			});
		</script>

	</body>

</html>