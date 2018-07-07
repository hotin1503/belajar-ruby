print "Ketikan angka kamu: "
a = gets.chomp.to_i

if a == 0 then
  puts "Your number must be greater than 0"
else
  if a % 3 == 0 && a % 5 != 0 then
    puts "Fizz"
  elsif a % 5 == 0 && a % 3 != 0 then
    puts "Buzz"
  elsif a % 3 == 0 && a % 5 == 0 then
    puts "FizzBuzz"
  else
    puts "Not at all"
  end
end

