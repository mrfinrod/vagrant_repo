
months_days = {1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31}

=begin
Год високосный если:
1. делится без остатка на 4, но не делится на 100
2. делится без остатка на 400
=end

def is_leap_year(year)
  (year % 400 == 0) || (year % 100 != 0 && year % 4 == 0)
end

puts 'Введите число'
day = gets.chomp.to_i

puts 'Введите месяц (число)'
month = gets.chomp.to_i

puts 'Введите год'
year = gets.chomp.to_i

days_counter = 0

i = 1
while i < month
  if i == 2 && is_leap_year(year)
    days_counter += 29
  else
    days_counter += months_days[i]
  end
  i += 1
end

days_counter = days_counter + day

puts days_counter
