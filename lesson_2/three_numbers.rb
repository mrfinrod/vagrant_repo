
months_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

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
input_month = month

puts 'Введите год'
year = gets.chomp.to_i

days_counter = 0

while month > 1
  if month == 2 && is_leap_year(year) && input_month != 2
    days_counter += 29
  else
    days_counter += months_days[month - 1]
  end
  month -= 1
end

days_counter = days_counter + day

puts days_counter
