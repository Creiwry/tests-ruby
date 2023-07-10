def who_is_bigger(num1, num2, num3)
  number_hash = { 'a' => num1, 'b' => num2, 'c' => num3}
  if number_hash.values.include?(nil)
    "nil detected"
  else
    sorted_hash = number_hash.sort_by(&:last).to_h
    biggest_number = sorted_hash.keys.last
    "#{biggest_number} is bigger"
  end
end

def reverse_upcase_noLTA(string)
  new_string = string.reverse.upcase
  result = []
  forbidden_letters = ['L', 'T', 'A']

  new_string.split("").each do |letter|
    result << letter unless forbidden_letters.include?(letter)
  end

  result.join
end

def array_42(array)
  array.include?(42)
end

def magic_array(array)
  array = array.flatten.sort
  final_array = []
  array.each do |number|
    number_multiple = number * 2 unless (number % 3).zero?
    unless final_array.include?(number_multiple) || number_multiple == nil
      final_array << number_multiple 
    end
  end
  final_array
end
