def even_or_odd(number)
  @number = number
  if @number % 2 == 0
    puts "Even"
    puts
  else
    puts "Odd"
    puts
  end
end

print "Type your number: "
typedNumber = gets.to_i
puts
even_or_odd(typedNumber)
puts