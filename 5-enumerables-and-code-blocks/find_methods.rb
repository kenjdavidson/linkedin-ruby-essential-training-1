#!/usr/bin/env ruby

pantry = {
  apple: 5,
  banana: 1,
  pear: 0
}

puts pantry.find_all {|fruit,number| number < 2}