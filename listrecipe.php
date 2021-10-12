<?php
   header("Access-Control-Allow-Origin: *");
   $arr=null;
   $conn = new mysqli("localhost", "hybrid_160419103","ubaya","hybrid_160419103");
    if($conn->connect_error) {
        $arr= ["result"=>"error","message"=>"unable to connect"];
    }
    
    // Apakah ada kata $_POST['cari']
    if(isset($_POST['judul'])) {
        $cari=$_POST['judul']; //atau GET
        $sql = "SELECT * FROM recipe where judul like '%$cari%'";
    } 
      else {
        $sql = "SELECT * FROM recipe";
    }
    
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->get_result();
    $data=[];
    if ($result->num_rows > 0) {
        while($r=mysqli_fetch_assoc($result))
        {
            array_push($data,$r);
        }
        $arr=["result"=>"success","data"=>$data];
    } 
    else {
        $arr= ["result"=>"error","message"=>"sql error: $sql"];
    }
    echo json_encode($arr);
    
    $stmt->close();
    $conn->close();
?>