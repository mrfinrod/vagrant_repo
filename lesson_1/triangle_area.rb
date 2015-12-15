puts 'Введите основание треугольника'
basic = gets.chomp.to_i

puts 'Введите высоту треугольника'
height = gets.chomp.to_i

area = 0.5 * basic * height
puts "Площадь треугольника #{area}"
