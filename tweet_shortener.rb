# Write your code here.

def dictionary 
  word_list = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(given_string)

  my_dictionary = dictionary
  my_dictionary.each do |word, sub_word|
  word_to_sub = /\b#{word}\b/
 given_string.gsub!(/\b#{word}\b/,sub_word)
  end
  given_string
end