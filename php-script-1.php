<!-- PHP script version of challenge -->

<?php

  // generates 10 random numbers

  function GenerateRandomNumbers(){
    $random_numbers_array = range(1,100);
    shuffle($random_numbers_array);
    return array_slice($random_numbers_array, 0, 10);
  }

  // creates a file in which to store output

  $outputfile = fopen("phpresult.txt", "w") or die ("Can't open file!");
  $my_random_numbers_for_file = GenerateRandomNumbers();

  foreach ($my_random_numbers_for_file as $randoms) {
    fwrite($outputfile, $randoms . "\n");
  }

  fclose($outputfile);
?>
