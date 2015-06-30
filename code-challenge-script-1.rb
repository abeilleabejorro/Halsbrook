require_relative 'script-2.rb'
require 'pry'
# The Test:

# Please build a RUBY script that generates 10 distinct random numbers from 1-100 and then save them in a file called "result.txt" (one number per line).

# Please build another PHP script that reads the above file "result.txt" and outputs the minimum and maximum numbers, sorts the list and then save it in a file called "sorted.txt".

# Please let us know if you have any questions.

# *step 1: Generate 10 distinct random numbers from 1-100
# *step 2: Save them in a file "result.txt"
# *step 3: Have a new script that opens the file
# *step 4: Do stuff to that file
# *step 5: Outputs to new file

#method to generate ten random unique numbers
  def generate_random_numbers
   ten_random_numbers = (1..100).to_a.shuffle.take(10)
  end

#saves the random numbers in the result.txt file on separate lines
  file = File.open("result.txt", "w")
      
  generate_random_numbers.each do |random_number|
    file.puts random_number
  end



