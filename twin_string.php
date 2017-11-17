<?php

/*
 * Complete the function below.
 */
function twins($a, $b) {
    $result = [];
    $longerArr = [];
    
    if(count($a) > count($b)){
        $longerArr = $a;
    }else{
        $longerArr = $b;
    }
    
    for($i = 0; $i < count($longerArr); $i++){
        if($a[$i] == null || $b[$i] == null || strlen($a[$i]) != strlen($b[$i])){
            array_push($result, "No");
        }else{
            array_push($result, check_twins($a[$i], $b[$i]));
        }
    }
    
    return $result;
}

function check_twins($a, $b){
    $oddA = [];
    $evenA = [];
    $oddB = [];
    $evenB = [];
    $result = "No";
    
    for($i = 0; $i < strlen($a); $i++){
        if($i % 2 != 0){
            array_push($evenA, $a[$i]);
            array_push($evenB, $b[$i]);
        }else{
            array_push($oddA, $a[$i]);
            array_push($oddB, $b[$i]);
        }
    }

    sort($oddA);
    sort($oddB);
    sort($evenA);
    sort($evenB);
    
    if(($oddA == $oddB) && ($evenA == $evenB)){
        $result = "Yes";
    }
    
    return $result;
}
