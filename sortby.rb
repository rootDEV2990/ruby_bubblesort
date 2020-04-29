def bubble_sort(array)
  loop_size = array.length
  loop do
    swap = false
    (loop_size - 1).times do |i|
      if array[i] > array[i + 1]

      array[i], array[i + 1] = array[i + 1], array[i]
      swap = true
      end
    end
    break unless swap
  end
  array
end

def bubble_sort_by(array)
  loop_size = array.length
  loop do
    swap = false
    (loop_size - 1).times do |i|
      if yield(array[i], array[i + 1]) > 0

      array[i], array[i + 1] = array[i + 1], array[i]
      swap = true
      end
    end
    break unless swap
  end
  array
end

=begin test cases
input = [5, 3, 4, 9, 1, 8]
p bubble_sort(input)

inp = [1, 3, 4, 5, 8, 9]
p bubble_sort_by(inp) { |first, second| second - first }
=end
