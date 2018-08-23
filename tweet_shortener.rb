# Write your code here.

def dictionary 
  word_list = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "For" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(given_string)

  my_dictionary = dictionary
  my_dictionary.each do |word, sub_word|
  given_string.gsub!(/\b#{word}\b/,sub_word)
  end
  given_string
end

def bulk_tweet_shortener(given_array)
  given_array.each do |strings|
    words = word_substituter(strings)
    puts words
  end
end

def selective_tweet_shortener(given_tweet)
  if given_tweet.length > 140 ? 
    word_substituter(given_tweet)
  else
    given_tweet
  end
end

def shortened_tweet_truncator(given_tweet)

given_tweet.length > 140 ? given_tweet[0...140] : given_tweet
end















