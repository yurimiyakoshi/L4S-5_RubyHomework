def prime_number(number)
  # number = gets.to_i
  if number < 2
    return 'false'
  elsif number == 2
    return 'true'
  else
    for x in 2..(number - 1)
      if number % x == 0
        return 'false'
        break
      elsif x == number - 1
        return 'true'
      end
    end
  end
end


puts "2以上の数値を入力してください"
begin
  num = gets.to_i
  if num < 2
    raise RuntimeError
  end
rescue RuntimeError
    puts "入力する数値は2以上にしてください"
    retry
end

result = prime_number(num)
if result == "true"
  puts "yes"
else
  puts  "no"
end

# prime_number(gets.to_i)

# begin
# # 例外が起こるかも知れないコード
# rescue => error # 変数(例外オブジェクトの代入)
# # 例外が発生した時のコード
# end