
letters = ['a', 'e', 'i', 'o', 'u']
alphabet = ('a'..'z')
result = {}

alphabet.each_with_index do |key, value|
  result[key] = value + 1 if letters.include?(key)
end

puts result
