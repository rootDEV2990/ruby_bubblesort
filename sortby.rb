array = [5,3,4,9,1,8]
x =  0
loop_size = array.lenth
loop do 
  (loop_size-1).times do |x|
    while array[x] > array[x+1]
      array[x], array[x+1] = array[x+1], array[x]
      x+=1 
    end
  end
p array
