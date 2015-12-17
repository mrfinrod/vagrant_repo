puts 'Введите основание треугольника'
basic = gets.chomp.to_f

puts 'Введите высоту треугольника'
height = gets.chomp.to_f

area = 0.5 * basic * height
puts "Площадь треугольника #{area}"
