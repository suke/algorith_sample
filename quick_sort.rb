require 'benchmark'

def quick_sort(array)
  if array.length < 2
    return array  
  end
  larger = []
  smaller = []
  pivot = array.shift
  for i in array
    if i < pivot
      smaller << i
    else
      larger << i
    end
  end
  
  quick_sort(smaller) + [pivot] + quick_sort(larger)
end

puts Benchmark::CAPTION
puts Benchmark.measure {
  puts quick_sort((1..100).to_a.shuffle)
}
