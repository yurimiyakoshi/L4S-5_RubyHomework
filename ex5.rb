dictionary = { 'dog' => '犬', 'cat' => '猫' }
loop do
  print "英語："
  x = gets.chomp
  if dictionary[x]
    puts "日本語：#{dictionary[x]}"
  else
    print "#{x}の日本語訳を教えてください："
    y = gets.chomp
    dictionary.store(x, y)
  end
end