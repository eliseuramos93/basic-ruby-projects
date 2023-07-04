def encrypt_downcase_letter(letter, shift_factor)
  letter_code = letter.ord
  (letter_code + shift_factor > 122) ?    # doest the sum go over "z"?
    (letter_code + shift_factor - 26).chr : 
    (letter_code + shift_factor).chr
end

def encrypt_upcase_letter(letter, shift_factor)
  letter_code = letter.ord
  (letter_code + shift_factor > 90) ?     # does the sum go over "Z"? 
    (letter_code + shift_factor - 26).chr : 
    (letter_code + shift_factor).chr
end 

def caesar_cipher(string, shift_factor)
  encrypted_array = string.split("").map do |letter|
    if letter.ord.between?(65, 90)  # if letter is between A-Z
      encrypt_upcase_letter(letter, shift_factor)
    elsif letter.ord.between?(97, 122) # if letter is between a-z
      encrypt_downcase_letter(letter, shift_factor)
    else 
      letter
    end 
  end 
  encrypted_array.join("")
end 

p caesar_cipher("What a string!", 5)