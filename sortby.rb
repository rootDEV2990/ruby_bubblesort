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

def bubble_sort_by(array)
  items_unsorted = true
  while items_unsorted
    items_unsorted = false
    (0...(array.count - 1)).each do |index|
      if yield(array[index], array[index + 1]).negative?
        items_unsorted = true
        array[index], array[index + 1] = [array[index + 1], array[index]]
      end
    end
  end
  array
end

p 'Number Sort'
puts bubble_sort_items([1, 2, 5, 4, 1, 7, 4, 7])
p 'Alphabetical Sorting'
puts bubble_sort_items(%w[a b c alpha charlie bravo])
p 'String Size Sorting'
array = %w[wazzup wazzzzup wazzzup wazzzzzzup wazup wazzzzzup]
puts bubble_sort_by(array) { |item, size| item.length - size.length }
