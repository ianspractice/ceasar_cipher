def letter_index(letter)
  alpha = ("a".."z").to_a
  alpha.index(letter)
end

def new_letter(index)
  alpha = ("a".."z").to_a
  alpha[index]
end

def shift(letter, shift)
  initial_index = letter_index(letter)
  new_index = initial_index + shift
  new_letter = new_letter(new_index)
  p new_letter
end

shift("l", 5)

