def bubble_sort(array)
  loop_size = array.length
  loop do
    swap = false
    (loop_size - 1).times do |i|
      next unless array[i] > array[i + 1]

      array[i], array[i + 1] = array[i + 1], array[i]
      swap = true
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
      next unless yield(array[i], array[i + 1]).positive?

      array[i], array[i + 1] = array[i + 1], array[i]
      swap = true
    end
    break unless swap
  end
  array
end