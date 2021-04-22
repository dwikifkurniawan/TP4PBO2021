<?php 

/******************************************
PRAKTIKUM RPL
******************************************/

class Task extends DB{
	
	// Mengambil data
	function getTask(){
		// Query mysql select data ke tb_jadwal
		$query = "SELECT * FROM tb_jadwal ORDER BY tanggal";

		// Mengeksekusi query
		return $this->execute($query);
	}
	
	function addTask(){
		//untuk attribut
		$tname = $_POST['tname'];
		$tanggal = $_POST['tanggal'];
		$tdetails = $_POST['tdetails'];
		$tsubject = $_POST['tsubject'];
		$tsoal = $_POST['tsoal'];
		
		// Query mysql insert data ke tb_jadwal
		$query = "INSERT INTO tb_jadwal (nama_dosen, details, subject_jd, bentuk_soal, tanggal, status_jd) VALUES 
		('$tname', '$tdetails', '$tsubject', '$tsoal', '$tanggal', 'Belum')";
		
		// Mengeksekusi query
		return $this->execute($query);

		echo("<script>
		window.location.href = 'index.php';
		</script>");
	}

	function deleteTask(){
		$id_hapus = $_GET['id_hapus'];

		// Query mysql select data ke tb_jadwal
		$query = "DELETE FROM tb_jadwal WHERE id = '$id_hapus'";

		// Mengeksekusi query
		return $this->execute($query);
		
		echo("<script>
		window.location.href = 'index.php';
		</script>");
	}

	function updateTask(){
		$id_status = $_GET['id_status'];

		// Query mysql select data ke tb_jadwal
		$query = "UPDATE tb_jadwal SET status_jd = 'Sudah' WHERE id = '$id_status'";

		// Mengeksekusi query
		return $this->execute($query);
		
		echo("<script>
		window.location.href = 'index.php';
		</script>");
	}

}



?>
