# Write your code here.

def dictionary(word)
  substitutes = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }
  substitutes.keys.each do |key|
    if key == word
      return substitutes[key]
    end
  end
  word
end

# Method for finding all of the long dictionary keys in tweets and replacing those found words with their coresponding dictionary values
def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_array.collect! do |word|
    dictionary(word)
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(tweet_arr)
  puts word_substituter(tweet_arr)
end
