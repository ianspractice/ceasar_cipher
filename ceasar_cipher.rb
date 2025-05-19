def letter_index(letter)
  alpha = ("a".."z").to_a
  alpha.index(letter)
end

def new_letter(index)
  alpha = ("a".."z").to_a
  alpha[index]
end

def letter_shift(letter, shift)
  initial_index = letter_index(letter)
  new_index = initial_index - 26 + (shift % 26)
  new_letter = new_letter(new_index)
  new_letter
end

def letter_shift_up(letter, shift)
  down_letter = letter.downcase
  initial_index = letter_index(down_letter)
  new_index = initial_index - 26 + (shift % 26)
  new_letter = new_letter(new_index)
  new_letter.upcase
end

def shift(phrase, shift)
  array = phrase.split("")
  new_array = []
  array.map do |letter|
    if letter.match(/[^a-zA-z]/)
      new_letter = letter
    elsif letter == letter.upcase
      new_letter = letter_shift_up(letter, shift)
    else
      new_letter = letter_shift(letter, shift)
    end
  new_array.push(new_letter)
  end
  new_phrase = new_array.join("")
  p new_phrase
end

shift("Aapple?? 888 *** ButtTTR!!", 27)