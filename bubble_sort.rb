numbers = [9, 5, 6, 4, 1, 3]
puts "Original array: #{numbers}"

puts "bubble sort:"
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

numbers = bubble_sort(numbers)

puts "Ordered array: #{numbers}"