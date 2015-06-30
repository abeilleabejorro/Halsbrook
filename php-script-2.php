<?php
    
    //open phpresult.txt for reading
    $random_numbers_file = file_get_contents("phpresult.txt");

    //turn results string into an integer array by line-break
    $random_numbers_array = array_map('intval', explode("\n", $random_numbers_file));
    //gets rid of spare element caused by extra linebreak
    array_pop($random_numbers_array);

    //finds min and max value of the array
    $max_value_array = max($random_numbers_array);
    $min_value_array = min($random_numbers_array);

    //creates and writes to output file the min/max and sorted values

    $fileoutput = fopen("phpsorted.txt", "w") or die ("Can't open file!");

    fwrite($fileoutput, "Max value " . $max_value_array . "\n");
    fwrite($fileoutput, "Min value " . $min_value_array . "\n");
    
    foreach ($random_numbers_array as $randomvalues) {
      fwrite($fileoutput, $randomvalues . "\n");
    }

    fclose($fileoutput);

?>