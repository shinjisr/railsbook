# The Benchmark module provides methods to measure and report the time used to execute Ruby code.
require 'benchmark'
# set loop times
loop_times = 100000000

# compare string to string
str = Benchmark.measure do
  loop_times.times do
    "hello" == "hello"
  end
end.total

# compare symbol to symbol
sym = Benchmark.measure do
  loop_times.times do
    :hello == :hello
  end
end.total

puts "Benchmark"
puts "String: #{str}"
puts "Symbol: #{sym}"
