
result = {}
final_sum = 0

while true
  puts 'Введите название товара'
  good_name = gets.chomp

  break if good_name == 'стоп'

  puts 'Введите цену'
  good_price = gets.chomp.to_f

  puts 'Введите количество'
  good_count = gets.chomp.to_f

  sum = (good_price * good_count).round(2)
  final_sum += sum

  result[good_name] = {price: good_price, count: good_count, sum: sum}
end

puts result

puts "Итого: #{final_sum}"
