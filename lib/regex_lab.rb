require 'pry'

def starts_with_a_vowel?(word)
  word.match(/^[aeiou]/i) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  words = text.split(' ')
	words.grep(/ \b(un)/ && /(ing)\b/)
end

def words_five_letters_long(text)
  text.scan(/\b[a-z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
	!text.match(/(\A[A-Z])([\.|\!|\?]\z)/)[0].empty?
end

def valid_phone_number?(phone)
  !phone.scan(/(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})[-. ]*/).empty?
end
