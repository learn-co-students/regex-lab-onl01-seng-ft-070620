require 'pry'
def starts_with_a_vowel?(word)
    word.match?(/^[aieouAEIOU]/)
end

def words_starting_with_un_and_ending_with_ing(text)
    text.split(' ').select {|word| word.match?(/^un.*ing$/)}
end

def words_five_letters_long(text)
    text.split(' ').select {|word| word.match?(/^.{5}$/)}
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    text.match?(/\A[A-Z].*\W\z/)
end

def valid_phone_number?(phone)
    phone.match?(/\d{3}.*\d{3}.*\d{4}/)
end
