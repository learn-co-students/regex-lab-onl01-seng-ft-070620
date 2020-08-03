def starts_with_a_vowel?(word)
  word.match? /\A[aeiou]/i
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\b[Uu]n[a-z]*ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/^[A-Z].*[a-zA-Z][.!?]$/) ? true : false
  # ^ for start of string
  # [A-Z] first letter of string is capital 
  # .* any amount of any characters
  # [a-zA-Z] any amount of a-z and A-Z characters
  # [.]$ ends with punctuation 
end

# def valid_phone_number?(phone)
#  phone.scan(/^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$/)
#
# end

def valid_phone_number?(phone)
  phone.match? /\(?\d{3}\)?(\s|-)?\d{3}(\s|-)?\d{4}/
end