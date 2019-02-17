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

result = prime_number(gets.to_i)
if result == "true"
  puts "yes"
else
  puts  "no"
end
# prime_number(gets.to_i)

#number-1まで割る必要ない
#2で割れた時点で他の偶数で割る必要がない
#カラーコードとかは6けたで