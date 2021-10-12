<?php
   header("Access-Control-Allow-Origin: *");
   $arr=null;
   $conn = new mysqli("localhost", "hybrid_160419103","ubaya","hybrid_160419103");
    if($conn->connect_error) {
        $arr= ["result"=>"error","message"=>"unable to connect"];
    }

    $_POST['id'] = "idrecipefood";
    // Apakah ada kata $_POST['cari']
    if(isset($_POST['id'])) {
        $id=$_POST['id']; //atau GET
        $sql = "SELECT * FROM recipe where idrecipefood=$id";
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

        // Get categoryfood
        $sql2 = "SELECT categoryname FROM categoryfood INNER JOIN categoryrecipefood
        on categoryfood.idcategory=categoryrecipefood.idcategory";

        $stmt2 = $conn->prepare($sql2);
        $stmt2->execute();
        $categoryname=[];
        $result2 = $stmt2->get_result();
        if ($result2->num_rows > 0) {
        while($r2=mysqli_fetch_assoc($result2))
        {
            array_push($categoryname,$r2);
        }
        
        }

        $data["categoryname"]=$categoryname;

        $arr=["result"=>"success","data"=>$data];
    } 
    else {
        $arr= ["result"=>"error","message"=>"sql error: $sql"];
    }
    
    echo json_encode($arr);
    $stmt->close();
    $conn->close();
?>