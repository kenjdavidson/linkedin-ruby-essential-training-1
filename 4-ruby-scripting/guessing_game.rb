#!/usr/bin/env ruby

DEFAULT_MAX = 10
DEFAULT_GUESSES = 3
answer = rand(DEFAULT_MAX)+1
correct = false

print "What's your name? "
name = gets.chomp 

puts "Hello #{name}."
puts "We are going to play a guessing game."
puts "I will choose a number between 1 and #{max}."
puts "You will get three guesses..."

1.upto(DEFAULT_GUESSES) do |guess_number|
  print "Guess #{guess_number}: "
  guess = gets.chomp.to_i

  case guess
  when answer    
    correct = true
    break
  when (1...answer)
    puts "Too low..."
  when (answer..max)
    puts "Too high..."
  end 
end 

puts "Contrats #{name}, you got it right!!" if correct
puts "Sorry you didn't get it right. " unless correct
puts "Goodbye."