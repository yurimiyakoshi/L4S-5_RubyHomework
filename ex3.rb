def prime_number(number)
  # number = gets.to_i
  if number < 2
    return 'false'
  elsif number == 2
    return 'true'
  else
    for x in 2..(number - 1)
      if number % x == 0
        return false
        break
      elsif x == number - 1
        return true
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

if prime_number(num)
  puts "yes"
else
  puts  "no"
end
