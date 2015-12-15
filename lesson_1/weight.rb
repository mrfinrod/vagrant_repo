puts 'Ваше имя?'
user_name = gets.chomp

puts 'Ваш рост?'
height = gets.chomp.to_i

ideal_weight = height - 110

if ideal_weight < 0
  puts 'Ваш вес уже оптимальный'
else
  puts "#{user_name}, Ваш идеальный вес #{ideal_weight} кг"
end
