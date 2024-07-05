<?php
echo "Bonjour";
echo "<br/>";
// Récuperer les paramètres en PHP
if(isset($_GET['param1'])){
    $param1 = $_GET['param1'];
}
else{
    $param1 = "defaut";
}

$param2 = isset($_GET['param2']) && $_GET['param2'] ;

echo "param1 : {$param1}, param2 : {$param2}";

hello("bonjour tout le monde");

function hello($msg){
    echo "<h2>" . $msg . "</h2>";
}


/*

https://x9k5f33g-3000.uks1.devtunnels.ms/

*/

echo " {$asd} hello"
?>