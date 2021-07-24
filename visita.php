<?php
include "conex.php";
date_default_timezone_set("America/Bogota");

$ip = $_SERVER['REMOTE_ADDR'];

$sqlConsultar = $con->query("SELECT * FROM tbl_visita WHERE ip = '$ip'");
$contarConsultar = $sqlConsultar->num_rows;

if($contarConsultar == 0 ){
    $sqlInsertar = $con->query("INSERT INTO tbl_visita (ip,fecha) VALUES ('$ip',now())");
    }else {
        $row = $sqlConsultar->fetch_array();
        $fechaRegistro = $row['fecha'];
        $fechaActual = date("Y-m-d H:1:s");
        $nuevaFecha = strtotime($fechaRegistro."+ 1 minutes");
        $nuevaFecha = date("Y-m-d H:1:s",$nuevaFecha);

        if($fechaActual >= $nuevaFecha){
            $sqlInsertar = $con->query("INSERT INTO tbl_visita (ip,fecha) VALUES ('$ip',now())");

        
        }
    }

?>