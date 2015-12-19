
months_list = {
    1 => {'name' => 'January', 'days' => 31},
    2 => {'name' => 'February', 'days' => 28},
    3 => {'name' => 'March', 'days' => 31},
    4 => {'name' => 'April', 'days' => 30},
    5 => {'name' => 'May', 'days' => 31},
    6 => {'name' => 'June', 'days' => 30},
    7 => {'name' => 'July', 'days' => 31},
    8 => {'name' => 'August', 'days' => 31},
    9 => {'name' => 'September', 'days' => 30},
    10 => {'name' => 'October', 'days' => 31},
    11 => {'name' => 'November', 'days' => 30},
    12 => {'name' => 'December', 'days' => 31}
}

=begin
Год високосный если:
1. делится без остатка на 4, но не делится на 100
2. делится без остатка на 400
=end

def is_leap_year(year)
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        return true
      end
      return false
    end
    return true
  end
  return false
end

puts 'Введите число'
day = gets.chomp.to_i

puts 'Введите месяц (число)'
month = gets.chomp.to_i

puts 'Введите год'
year = gets.chomp.to_i

days_counter = 0

while month > 1
  if month == 2 && is_leap_year(year)
    days_counter += 29
  else
    days_counter += months_list[month]['days']
  end
  month -= 1
end

days_counter = days_counter + day

puts days_counter
