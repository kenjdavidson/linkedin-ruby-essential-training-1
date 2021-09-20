#!/usr/bin/env ruby

SENTENCES = [{
    sentence: "I decided to _ a _ funny party for my _ _.",
    options: ["verb", "adjective","adjective","noun"]
},{
    sentence: "I was _ down the street one afternoon when _ came up to me and _ in my face.",
    options: ["verb", "noun", "verb"]
}]

puts "----------------"
puts "- Ruby Blanks  -"
puts "----------------"

# Pick one of the options, this would require validation 
print "Pick an option (1 or 2): "
choice = SENTENCES[gets.chomp.to_i-1]

# Get the words matching the requested item
words = choice[:options].map do |option|
  prefix = (['a','e','i','o','u'].any? option[0]) ? "an" : "a"
  print "Give me #{prefix} #{option}: "
  gets.chomp
end 

# Now replace each of the underscores with the input words
text = choice[:sentence]
choice[:options].length.times do |count|
  index = text.index "_"
  text = text[0...index] + words[count] + text[index+1..-1]
end  

puts text