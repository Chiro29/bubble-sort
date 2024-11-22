numbers = [9, 5, 6, 4, 1, 3]

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
  loop do 
    puts "Choose 1 to generate 10 random numbers.\nChoose 2 to enter 10 numbers manually."
    choice = gets.chomp

    case choice 
      when "1"
        puts "test 1" 
        break
      when "2"
        puts "test 2"
        break
      else
        puts "Error"
    end
  end

  puts "Original array: #{numbers}"

  puts "bubble sort:"

  numbers = bubble_sort(numbers)

  puts "Ordered array: #{numbers}"

  puts "Do you want to continue using the programme?\nPress any key other than 'n' or enter to continue\n'n' to close"
  again = gets.chomp.downcase

  if again === "n"
    break
  end  
end