def print_even_or_odd(number)
  @number = number
  if @number % 2 == 0
    print "#{@number} is even"
    puts
  else
       print "#{@number} is odd"
      puts
  end
end

print "Type your number: "
typedNumber = gets.to_i
puts
print_even_or_odd(typedNumber)
puts