def translate(string)
  words = string.split(" ")
  vowels = ['a', 'e', 'i', 'o', 'u']
  new_string_array = []
  words.each do |word|
    if word.start_with?(/qu/)
      string_array = word.chars
      qu_group = string_array.shift(2)
      word = string_array.join("") + qu_group.join("") +"ay"
    elsif word.start_with?(/[^aeiou]qu/)
      string_array = word.chars
      qu_group = string_array.shift(3)
      word = string_array.join("") + qu_group.join("") +"ay"
    elsif word.start_with?(/[aeiou]/)
      word = word + "ay"
    elsif word.start_with?(/[^aeiou][^aeiou][^aeiou]/)
      string_array = word.chars
      first_three_letters = string_array.shift(3)
      word = string_array.join("") + first_three_letters.join("") + "ay"
    elsif word.start_with?(/[^aeiou][^aeiou]/)
      string_array = word.chars
      first_two_letters = string_array.shift(2)
      word = string_array.join("") + first_two_letters.join("") + "ay"
    else
      string_array = word.chars
      first_letter = string_array.shift()
      word = string_array.join("") + first_letter + "ay"
    end
    new_string_array << word
  end
  new_string_array.join(" ")
end
