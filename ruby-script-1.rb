  #This is the Ruby script version of the code challenge.

  #method to generate ten random unique numbers
  def generate_random_numbers
   ten_random_numbers = (1..100).to_a.shuffle.take(10)
  end

  #saves the random numbers in the result.txt file on separate lines
  file = File.open("rubyresult.txt", "w")
      
  generate_random_numbers.each do |random_number|
    file.puts random_number
  end

  file.close


