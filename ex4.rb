history = Array.new

loop do
  p "数値?"
  num = gets.to_i
  if num == 0
    history.length.times do
      puts history.pop
    end
    break
  else
    history.push(num)
  end
end