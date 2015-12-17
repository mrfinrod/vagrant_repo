puts 'Введите первую сторону треугольника'
first_side = gets.chomp.to_f

puts 'Введите вторую сторону треугольнка'
second_side = gets.chomp.to_f

puts 'Введите третью сторону треугольнка'
third_side = gets.chomp.to_f


# вычисление по теореме Пифагора
def is_right(max_side, side_1, side_2)
  sum = side_1 ** 2 + side_2 ** 2

  if max_side ** 2 == sum
    true
  end
end


# прямоугольный треугольник
right_triangle = false
# равнобедренный треугольник
isosceles_triangle = false

if first_side > second_side && first_side > third_side
  if is_right(first_side, second_side, third_side)
    right_triangle = true
  end
elsif second_side > first_side && second_side > third_side
  if is_right(second_side, first_side, third_side)
    right_triangle = true
  end
elsif third_side > first_side && third_side > second_side
  if is_right(third_side, first_side, second_side)
    right_triangle = true
  end
end

if first_side == second_side
  isosceles_triangle = true
elsif second_side == third_side
  isosceles_triangle = true
elsif third_side == first_side
  isosceles_triangle = true
end

if first_side == second_side && first_side == third_side
  puts 'Треугольник равнобедренный и равносторонний'
elsif isosceles_triangle
  puts 'Треугольник равнобедренный'
elsif right_triangle
  puts 'Треугольник прямоугольный'
else
  puts 'Самый обыкновенный треугольник'
end
