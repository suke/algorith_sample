require 'benchmark'

def selection_sort(array)
  a, len = array.dup, array.length - 1
  for i in 0..len
    min, pos = a[i], i
    for j in (i + 1)..len
      if min > a[j]
        min, pos = a[j], j
      end      
    end
    a[i], a[pos] = min, a[i]
  end
  a
end

puts Benchmark::CAPTION
puts Benchmark.measure {
  puts selection_sort((1..100).to_a.shuffle)
}
