def letter_index(letter)
  alpha = ("a".."z").to_a
  alpha.index(letter)
end

def new_letter(index)
  alpha = ("a".."z").to_a
  alpha[index]
end

def shift(word, shift)
  array = word.split("")
  new_array = []
  array.map do |letter|
  initial_index = letter_index(letter)
  new_index = initial_index - 26 + (shift % 26)
  new_letter = new_letter(new_index)
  new_array.push(new_letter)
  end
  p new_array
end

shift("abcde", 27)