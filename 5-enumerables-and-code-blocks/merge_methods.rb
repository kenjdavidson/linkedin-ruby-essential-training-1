#!/usr/bin/env ruby

h1 = { a: 2, b: 4, c: 6}
h2 = { a: 3, b: 45, d: 8}

puts h1.merge(h2) do |k,o,n| 
  o + n
end
# expected a: 5, b: 49
# but apparently not
