<?php
$Userver = "localhost";
$Uuser = "root";
$Upass = "";
$Udb= "db_evoting";

$con = new mysqli($Userver,$Uuser,$Upass,$Udb);

if($con->connect_errno){
    echo "ha ocurrido un error";
}
?>