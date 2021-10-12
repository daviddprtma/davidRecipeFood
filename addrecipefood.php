<?php
   header("Access-Control-Allow-Origin: *");
   $arr=null;
   $conn = new mysqli("localhost", "hybrid_160419103","ubaya","hybrid_160419103");
    if($conn->connect_error) {
        $arr= ["result"=>"error","message"=>"unable to connect"];
    }

    //Digunakan untuk mengubah variable yang ada
    extract($_POST);

    $sql = "INSERT INTO recipe(judul,bahan,persiapan,gambar) VALUES (?,?,?,?)";
    $stmt = $conn -> prepare($sql);
    $stmt -> bind_param("ssss",$judul,$bahan,$persiapan,$gambar);
    $stmt -> execute();
    if($stmt -> affected_rows >0 ){
        $arr=["result" => "success","id" =>$conn->insert_id];
    }
    else{
        $arr=["result" => "fail","Error" =>$conn->error];
    }

    echo json_encode($arr);
    $stmt->close();
    $conn->close();
?>