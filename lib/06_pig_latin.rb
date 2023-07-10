def translate(string)
  words = string.split
  new_string_array = []

  words.each do |word|
    string_array = word.chars
    punctuation = [',', '.', '?', '!', ';', ':']

    local_punctuation = string_array.pop if punctuation.include?(string_array.last)

    shift_variable = get_shift_variable(word)
    letter_group = string_array.shift(shift_variable)

    new_word = "#{string_array.join}#{letter_group.join}ay#{local_punctuation}"
    new_word = new_word.capitalize if word[0].upcase == word[0]
    new_string_array << new_word
  end

  new_string_array.join(' ')
end

def get_shift_variable(word)
  if word.start_with?(/[^aeiou]qu/i) || word.start_with?(/[^aeiou][^aeiou][^aeiou]/i)
    3
  elsif word.start_with?(/qu/i) || word.start_with?(/[^aeiou][^aeiou]/i)
    2
  elsif word.start_with?(/[aeiou]/i)
    0
  else
    1
  end
end
