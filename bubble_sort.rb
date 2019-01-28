require 'benchmark'

def bubble_sort(array)
  dup = array.dup
  length = dup.length
  for i in 1..length do
    for j in 1..(length -1) do
      if(dup[j - 1] > dup[j])
        dup[j], dup[j - 1] = dup[j - 1], dup[j]
      end
    end
  end
  dup
end

puts Benchmark::CAPTION
puts Benchmark.measure {
  puts bubble_sort((1..100).to_a.shuffle)  
}
