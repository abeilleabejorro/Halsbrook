require_relative 'code-challenge-script-1.rb'
require 'pry'
# The Test:

# Please build a RUBY script that generates 10 distinct random numbers from 1-100 and then save them in a file called "result.txt" (one number per line).

# Please build another PHP script that reads the above file "result.txt" and outputs the minimum and maximum numbers, sorts the list and then save it in a file called "sorted.txt".

# *step 1: Generate 10 distinct random numbers from 1-100
# *step 2: Save them in a file "result.txt"
# *step 3: Have a new script that opens the file
# *step 4: Do stuff to that file
# *step 5: Outputs to new file



array_of_random_numbers = File.read("result.txt").split("\n").map {|number| number}

array_of_random_numbers = array_of_random_numbers.map { |number| number.to_i}
array_of_random_numbers.sort!
max = array_of_random_numbers.max
min = array_of_random_numbers.min

file2 = File.open("sorted.txt", "a")
file2.puts "Maximum is #{max}"
file2.puts "Minimum is #{min}"
array_of_random_numbers.each do |sorted_element|
  file2.puts sorted_element
end




