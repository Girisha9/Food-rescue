<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="check_poor_area_.css">
    <title>Hello, world!</title>
    <style>
        table {border-collapse: collapse; font-family: helvetica}
td, th {border:  1px solid;
      padding: 10px;
      min-width: 200px;
      background: white;
      box-sizing: border-box;
      text-align: left;
}
.container {
      display: flex;
      flex-direction: column;
      align-items: center;
      margin-top: 50px;
    }
    .form-control {
      margin-top: 20px;
      width: 300px;
      padding: 10px;
      font-size: 16px;
      border-radius: 5px;
      border: 1px solid gray;
    }
    label {
      margin-top: 20px;
      font-size: 16px;
    }
    .submit-button {
      margin-top: 20px;
      padding: 10px 20px;
      border-radius: 5px;
      background-color: #4CAF50;
      color: white;
      cursor: pointer;
    }
    
  </style>
  </head>
<body>
<table>
    <tr>
        <th>city</th>
        <th>address</th>
        <th>population</th>
       
        
    </tr>
<?php
   
        if($_SERVER["REQUEST_METHOD"]=="POST")
        {
          session_start();
        include 'C:\xampp\htdocs\food-rescue\db_connect.php';
        $address2=$_POST["address2"];
         $sql="select * from poor_dynamic where  address='$address2'";
        $result=mysqli_query($conn,$sql);
        
        /*echo $sql;
        echo '<br>';
        echo $_SESSION["address"];
        echo '<br>';*/
        $sql2="select * from food where address='$_SESSION[address]' ";
        $res1=mysqli_query($conn,$sql2);
        $sql4= "DELETE FROM food WHERE address='$_SESSION[address]' AND city='$_SESSION[city]'";
        $res4=mysqli_query($conn,$sql4);
        $ch=0;
        /*echo $result->num_rows;
        echo '<br>';
        echo $res1->num_rows;
        echo '<br>';
        echo $_SESSION["volunteer"];
        echo '<br>';*/
        // echo $_SESSION["volunteer"];
        if($result->num_rows>0)
        { 
            while($row1=$res1->fetch_assoc()){
                while($row=$result->fetch_assoc())
            {
                $population=$row["population"];
                if($population>=2*$_SESSION["volunteer"]){
                $x="UPDATE poor_dynamic set population='$population'-(2*'$_SESSION[volunteer]') where address='$address2'";
                $res2=mysqli_query($conn,$x);
                $_SESSION["volunteer"]=0;
                }else{
                    
                $_SESSION["volunteer"]=$_SESSION["volunteer"]-$population/2;
                $sql5= "DELETE FROM poor_dynamic WHERE address='$address2' AND city='$_SESSION[city]'";
                $res5=mysqli_query($conn,$sql5);
                header("Location: http://localhost/food-rescue/poor_dynamic.php");
                exit();
                }
                
            }
            }
            echo "Changes has been updated";
        
         
        }
        else
        {
            echo "no result found";
        }
        $sql3="select * from poor_dynamic having address='$address2'";
        $res3=mysqli_query($conn,$sql3);
         
        if($res3 && $res3->num_rows>0)
        { 
         while($row3=$res3->fetch_assoc()){
            echo "<tr><td>".$row3["city"]."</td><td>".$row3["address"]."</td><td>".$row3["population"]."</td></tr>";
         }
        }
        
         
     }
       
        ?>
        </table>
        <div style="margin-bottom:180px;">
      <form method="post" action="./vol_poor_check.php">
    <input class="btn btn-primary" type="submit" value="Show total food available" style="background-color: #4CAF50" name="city">
    </div>
    </form>

</body>
</html>