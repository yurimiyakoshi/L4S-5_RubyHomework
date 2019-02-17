number = gets.to_i
for x in 1..number
  (number - x).times do
    print ' '
  end
  (2 * x - 1).times do
    print '*'
  end
  puts
end
