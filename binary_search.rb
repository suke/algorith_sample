require 'benchmark'

def binary_search(array, key)
  low, high = 0, array.length - 1
  count = 0
  while low <= high
    mid = ((low + high) / 2).ceil
    p "mid: #{mid}"
    target = array[mid]
    
    if target == key
      return mid
    elsif target > key
      high = mid - 1
    else
      low = mid + 1
    end
  end 
  nil
end

puts Benchmark::CAPTION
puts Benchmark.measure {
  puts binary_search((1..10000000).to_a, 18465)  
}


