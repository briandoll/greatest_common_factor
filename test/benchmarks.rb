require "benchmark"
require "mathn"
require 'lib/greatest_common_factor'

MAX = 100

puts "Note: This only compares two numbers, in order to compare with ruby's built-in feature"
Benchmark.bm do |x| 
  x.report("Ruby's built in gcd"){ 
    MAX.times{  8192.gcd(7744) } 
    MAX.times{  8192.gcd(144) }
  } 

  x.report("This library:      "){
    MAX.times{ [8192,7744].gcf }
    MAX.times{ [8192,144].gcf }
  }

end


