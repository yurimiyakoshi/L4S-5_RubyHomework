words = Hash.new([])

IO.foreach('words.txt') do |line|
  # line にファイルの各行が代入される
  x = line.chomp
  y = x.length
  words.store(x, y)
end

max_word = words.max { |a, b| a[1] <=> b[1] }
print max_word