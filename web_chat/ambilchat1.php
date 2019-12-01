<?php 

	$koneksi = new PDO('mysql:host=localhost;db_name=web_chat',"root",""); 

	$nama = @$_GET['nama'];
	$pesan = @$_GET['pesan'];
	$waktu = date("H:i");
	$akhir = @$_GET['akhir'];

	$json = '{"messages": {';
	if ($akhir==0) {
		$query = "SELECT nomor FROM drzchat ORDER BY nomor DESC LIMIT 1";
        $nomor = $koneksi->prepare($query);
        $nomor->execute();

    	$n = $nomor->fetch(PDO::FETCH_OBJ);
    	$no = $n['nomor'] + 1;
    	$json .= '"pesan":[ {';
    	$json .= '"id":"'.$no.'",
    			 "nama":"Admin",
    			 "teks":"Selamat datang di chatting room",
    			 "waktu":"'.$waktu.'"
    			 }]';
        $sql = 'insert into drzchat values(null, "Admin", ":nama bergabung dalam chat", :$waktu)';
    	$masuk = $koneksi->prepare($sql);

        $masuk->bindParam(':nomor',$no);
        $masuk->bindParam(':nama',$name);
        $masuk->bindParam(':pesan',$psn);
        $masuk->bindParam(':waktu',$wkt);

        $no = null;
        $name = "Admin";
        $psn = "$nama bergabung dalam chat";
        $wkt = "$waktu";

        $masuk->execute();

	}else{
		if ($pesan) {
			
			 $sql = "INSERT INTO drzchat (nomor,nama,pesan,waktu) VALUES (:nomor,:nama,:pesan,:waktu)";
             $masuk = $koneksi->prepare($sql);
			
            $masuk->bindParam(':nomor',null);
            $masuk->bindParam(':nama',$nama);
            $masuk->bindParam(':pesan',$pesan);
            $masuk->bindParam(':waktu',$waktu);

            $masuk->execute();
		}
        $sql = "SELECT * FROM drzchat WHERE nomor > $akhir";
        $query = $koneksi->prepare($sql);
        $query->execute();

    	$json .='"pesan":[';
    	while ($x = $query->fetch(PDO::FETCH_OBJ)) {
    		$json .= '{';
    		$json .= '"id":"'.$x['nomor'].'",
    				"nama":"'.htmlspecialchars($x['nama']).'",
    				"teks":"'.htmlspecialchars($x['pesan']).'",
    				"waktu":"'.$x['waktu'].'"
    			},';
    	}
    	$json = substr($json, 0,strlen($json)-1);
    	$json .= ']';
	}

	$json .= '}}';
	echo "$json";
 ?>