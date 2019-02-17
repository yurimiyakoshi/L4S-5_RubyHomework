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

if prime_number(num)
  puts "yes"
else
  puts  "no"
end


#number-1まで割る必要ない
#2で割れた時点で他の偶数で割る必要がない
#カラーコードとかは6けたで処理すると時間かかったりするので注意
