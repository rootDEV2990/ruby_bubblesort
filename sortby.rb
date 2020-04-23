array = [5,3,4,9,1,8]


#getting the size of items from user
loop_size = array.length
#starting loop
loop do 
  #set bootlean to false
  swap = false
  #setting loop times to length - 1 loop is not needed in last number
  #with each i in array do if or break loop
  (loop_size-1).times do |i|
    #if array item is greater than its neighbor = true
    if array[i] > array[i + 1]
      #change order of items
      array[i], array[i + 1] = array[i + 1], array[i]
      #while this code runs swap will have a true value
      swap = true
    end
  end
  #breat if not swap
  break if !swap
end
p array
