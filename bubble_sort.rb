def generate_array(array) 
  random_stock = Random.new

  array.each do |i|
    array[array.index(i)] = random_stock.rand(0..100)
  end

  array
end

def checkNumber()
  n = gets.chomp

  until n.match?(/\A-?\d+(\.\d+)?\z/) do
    puts "Error, enter numbers only"
    n = gets.chomp
  end

  n
end

def input_number(array)
  array.each do |i|
    puts "Enter a number"
    number = checkNumber()

    array[array.index(i)] = number.to_f
  end  

  array
end

def bubble_sort(array)
  n = array.length 

  (0...n-1).each do |i|
    (0...n-i-1).each do |j|
      print "#{array[j]}, #{array[j + 1]} --> "

      if array[j] >= array[j + 1]
        array[j], array[j + 1] = array[j + 1], array[j]
      end
      
      print "#{array[j]}, #{array[j + 1]}\n"
    end
  end

  array
end

loop do 
  original_array = Array.new(10)

  loop do 
    puts "Choose 1 to generate 10 random numbers.\nChoose 2 to enter 10 numbers manually."
    choice = gets.chomp

    case choice 
      when "1"
        puts "The numbers generated will be between 0 and 100"
        original_array = generate_array(original_array)

        break
      when "2"
        puts "Enter 10 numbers, you can enter normal numbers, negative numbers, and decimal numbers"
        original_array = input_number(original_array)
        
        break
      else
        puts "Error"
    end
  end

  puts "Original array: #{original_array}"

  puts "bubble sort:"

  ordered_array = bubble_sort(original_array)

  puts "Ordered array: #{ordered_array}"

  puts "Do you want to continue using the programme?\nPress any key other than 'n' or enter to continue\n'n' to close"
  again = gets.chomp.downcase

  if again === "n"
    break
  end  
end