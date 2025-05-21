def letter_index(letter)
  alpha = ("a".."z").to_a
  alpha.index(letter)
end

def new_letter(index)
  alpha = ("a".."z").to_a
  alpha[index]
end

def letter_shift(letter, shift)
  down_letter = letter.downcase
  initial_index = letter_index(down_letter)
  new_index = initial_index - 26 + (shift % 26)
  new_letter = new_letter(new_index)
  new_letter
end

def shift(string, shift)
  new_array = []
  string.split("").map do |letter|
    if letter.match(/[^a-zA-z]/)
      new_letter = letter
    elsif letter == letter.upcase
      new_letter = letter_shift(letter, shift).upcase
    else
      new_letter = letter_shift(letter, shift)
    end
  new_array.push(new_letter)
  end
  new_string = new_array.join("")
  new_string
end

puts shift("abcdef ABCDEF 1234 !*?{}", 27)