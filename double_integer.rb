def double_integer(i)
  # Double the input!
  @i = i
  doubled_integer = @i * 2
  puts
  puts "Double #{@i} is #{doubled_integer}"
  puts
end

puts "Type an integer: "
typed_integer = gets.to_i
double_integer(typed_integer)