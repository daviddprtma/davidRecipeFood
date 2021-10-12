<?php
   header("Access-Control-Allow-Origin: *");
   $arr=null;
   $conn = new mysqli("localhost", "hybrid_160419103","ubaya","hybrid_160419103");
    if($conn->connect_error) {
        $arr= ["result"=>"error","message"=>"unable to connect"];
    }
    extract($_POST);
    $sql = "SELECT * FROM users where username='$username' AND password='$password'";
  
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->get_result();
    $data=[];
    if ($result->num_rows > 0) {
        $arr=["result"=>"success","data"=>$data];
    } 
    else {
        $arr= ["result"=>"error","message"=>"sql error: $sql"];
    }
    echo json_encode($arr);
    
    $stmt->close();
    $conn->close();
?>