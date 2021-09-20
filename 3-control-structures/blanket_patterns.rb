# Challenge: Blanket Pattern(s)

def pattern_by_loop(str, shifts = 0) 
  puts "By While"
  puts str

  i = 0
  shifts = str.length if shifts == 0  
  while i < shifts
    str = str[1..-1] + str[0]
    puts str
    i += 1
  end
end 

def pattern_by_iter(str, shifts = 0) 
  puts "By Times"
  puts str

  shifts = str.length if shifts == 0
  shifts.times do 
    str = str[1..-1] + str[0]
    puts str
  end 
end

# Instruction method using modulo and array index
def pattern_by_array_index(str, shifts = 0)
  puts "By Array Index"
  puts str

  i = 0
  shifts = str.length if shifts == 0  
  while i < shifts
    middle = i.modulo(str.length)    # get the middle
    start_part = str[middle..-1]     # from the middle to the end
    end_part = str[0...middle]       # from the start to before the middle
    puts start_part + end_part
    i += 1
  end 
end 

pattern = "||--**||--**"
pattern_by_loop(pattern, 5)
pattern_by_iter(pattern)
pattern_by_array_index(pattern)
puts pattern
