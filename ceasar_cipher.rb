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
    if letter == " "
      new_letter = " "
    else
  initial_index = letter_index(letter)
  new_index = initial_index - 26 + (shift % 26)
  new_letter = new_letter(new_index)
    end
  new_array.push(new_letter)
  end
  new_word = new_array.join("")
  p new_word
end

shift("a a", 2)