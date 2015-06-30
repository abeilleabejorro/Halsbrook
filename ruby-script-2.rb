  #Opens rubyresult.txt, gets the numbers, assigns them to an array
  array_of_random_numbers = File.read("rubyresult.txt").split("\n").map {|number| number.to_i}

  #sorts the array
  array_of_random_numbers.sort!

  #finds the min and max
  max = array_of_random_numbers.max
  min = array_of_random_numbers.min

  #creates and opens sorted.txt
  file2 = File.open("rubysorted.txt", "w")

  #writes the max/min and sorted numbers to the file
  file2.puts "Maximum is #{max}"
  file2.puts "Minimum is #{min}"

  array_of_random_numbers.each do |sorted_element|
    file2.puts sorted_element
  end

  file2.close
