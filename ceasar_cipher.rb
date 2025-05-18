
def shift_one(letter, shift)
  alpha = ("a".."z").to_a
  initial_index = alpha.index(letter)
  new_index = initial_index + shift
  new_letter = alpha[new_index]
  p new_letter
end

shift_one("l", 5)

