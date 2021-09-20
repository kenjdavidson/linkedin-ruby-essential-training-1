#!/usr/bin/env ruby

puts (1..5).inject{|memo, n| memo + n}
# memo = memo (1)
# memo = memo (1) + 2
# etc.

puts ['apple','banana','pear'].inject(0) {|memo, fruit| memo + fruit.length}
# Initial value is 0 
# instead of the first value 'apple'