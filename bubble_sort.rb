def generate_array(array) 
  random_stock = Random.new

  array.each do |day|
    array[array.index(day)] = random_stock.rand(0..100)
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
        original_array = generate_array(original_array)
        break
      when "2"
        puts "test 2"
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