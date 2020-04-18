# frozen_string_literal: true

def bubble_sort_items(array)
  items_unsorted = true
  items_unsorted, array = sorting(array) while items_unsorted
  array
end

def sorting(array)
  sorted = true
  (0...(array.count - 1)).each do |index|
    if array[index] > array[index + 1]
      sorted = false
      array[index], array[index + 1] = [array[index + 1], array[index]]
    end
  end
  [!sorted, array]
end

p 'Number Sort'
puts bubble_sort_items([1, 2, 5, 4, 1, 7, 4, 7])
