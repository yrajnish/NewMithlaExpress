<?php

include 'config.php';
$db = new newmithlaexpress();

$q = "select * from table order by id desc limit $rand,1";
$q= $db-> read ($q);
if ($q ) {

    while ($a = $q->fetch_assoc()){
        echo "<a href ='' style='color:yellow; text-decoration:none'>";
        echo $a['title'] .' ' .$a['year'];
        echo " </a>"
    }
}
?>