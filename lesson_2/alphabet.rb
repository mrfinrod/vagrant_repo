
letters = ['a', 'e', 'i', 'o', 'u']
alphabet = ('a'..'z').to_a
result = {}

alphabet.each_with_index do |key, value|
  if letters.include?(key)
    result[key] = value
  end
end

puts result
