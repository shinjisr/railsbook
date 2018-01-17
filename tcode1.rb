require 'benchmark'
loop_times = 100000000

str = Benchmark.measure do
  loop_times.times do
    "hello" == "hello"
  end
end.total

sym = Benchmark.measure do
  loop_times.times do
    :hello == :hello
  end
end.total

puts "Benchmark"
puts "String: #{str}"
puts "Symbol: #{sym}"
