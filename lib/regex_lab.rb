require 'pry'

def starts_with_a_vowel?(word)
    !word[0].downcase.match(/[aeiou]/).nil?
end

def words_starting_with_un_and_ending_with_ing(text)
    text.split.grep(/^un[\s\S]+ing$/)

end

def words_five_letters_long(text)
    text.split.grep(/^\w{5}\z/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    !text.match(/^[A-Z][\s\S]+[\.\!\?]$/).nil?
end

def valid_phone_number?(phone)
    phone.scan(/[0-9]/).length == 10
end
