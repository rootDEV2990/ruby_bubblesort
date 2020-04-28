def bubble_sort(array)
  # getting the size of items from user
  loop_size = array.length
  # starting loop
  loop do
    # swap sets to false is not yet running
    swap = false
    # setting loop times to length - 1 loop is not needed in last number
    # with each i in array do if or break loop
    (loop_size - 1).times do |i|
      # if array item is greater than its neighbor = true
      next unless array[i] > array[i + 1]

      # change order of items
      array[i], array[i + 1] = array[i + 1], array[i]
      # while this code runs swap will have a true value
      swap = true
    end
    # breat if not swap
    break unless swap
  end
  array
end

input = [5, 3, 4, 9, 1, 8]
p bubble_sort(input)

def bubble_sort_by(array)
  # getting the size of items from user
  loop_size = array.length
  # starting loop
  loop do
    # swap sets to false is not yet running
    swap = false
    # setting loop times to length - 1 loop is not needed in last number
    # with each i in array do if or break loop
    (loop_size - 1).times do |i|
      # if array item is greater than its neighbor = true
      next unless yield(array[i], array[i + 1]) > 0

      # change order of items
      array[i], array[i + 1] = array[i + 1], array[i]
      # while this code runs swap will have a true value
      swap = true
    end
    # breat if not swap
    break unless swap
  end
  array
end

inp = [1, 3, 4, 5, 8, 9]
p bubble_sort_by(inp) { |first, second| second - first }
