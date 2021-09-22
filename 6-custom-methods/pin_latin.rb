#!/usr/bin/env ruby

##
# Pig Latin modifies words by:
# - Removing the first letter
# - Placing the first letter at the end
# - Adding an 'a' to the end
# 
# for example "running" becomes "unningray".
# glove => oveglay

PUNCTUATION = /([ ,.;:!?]+)/

def pig_latin(word = "") 
  index = word.index(/[aeiou]/) || 0
  start = word[0...index]
  ending = word[index..-1]
  "#{ending}#{start}ay".downcase
end

def sentence_to_pig_latin(sentence = "")
  converted = []
  sentence.split(PUNCTUATION).each do |word|   
    if word.match?(PUNCTUATION)
        converted << word
    else
        pl = pig_latin(word)        
        converted << pl
    end
  end 
  converted.join('')
end 

puts sentence_to_pig_latin("Hello, my name is Kenneth!")

print "Now enter your own sentence: "
input = gets.chomp

puts convert_sentence(input)