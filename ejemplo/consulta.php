<?php

/*
 * Following code will list all the products
 */

// array for JSON response
$response = array();


// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db
$db = new DB_CONNECT();

// get all products from products table
$result = mysql_query("SELECT *FROM personas") or die(mysql_error());

// check for empty result
if (mysql_num_rows($result) > 0) {
    // looping through all results
    // products node
    $response["personas"] = array();
    
    while ($row = mysql_fetch_array($result)) {
        // temp user array
        $personas = array();
        $personas["id"] = $row["id"];
        $personas["nombre"] = $row["nombre"];
        $personas["dni"] = $row["dni"];
        $personas["telefono"] = $row["telefono"];
        $personas["email"] = $row["email"];


        //$product["created_at"] = $row["created_at"];
        //$product["updated_at"] = $row["updated_at"];



        // push single product into final response array
        array_push($response["personas"], $personas);
    }
    // success
    $response["success"] = 1;

    // echoing JSON response
    echo json_encode($response);
} else {
    // no products found
    $response["success"] = 0;
    $response["message"] = "Personas no  encontradas";

    // echo no users JSON
    echo json_encode($response);
}
?>