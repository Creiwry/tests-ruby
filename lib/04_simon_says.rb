def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, times=2)
  new_string = []
  times.times do
    new_string << string
  end
  new_string.join(" ")
end

def start_of_word(string, length)
  string_array = string.split("")
  new_array = []
  length.times do
    new_array << string_array.shift()
  end
  new_array.join("")
end

def first_word(string)
  string.split[0]
end

def titleize(string)
  string_array = string.split(" ")
  final_string_array = []
  little_words = [ "and", "the", "of", "if", "at"]
  first_word = string_array.shift()
  first_word = first_word.capitalize
  final_string_array << first_word
  

  string_array.each do |word|
    if !little_words.include?(word)
      word = word.capitalize
    end

    final_string_array << word
  end
  final_string_array.join(" ")
end
