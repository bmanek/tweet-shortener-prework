require 'pry'

# Write your code here.
def dictionary
  sub_hash = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"}
end


def word_substituter(tweet)
    tweet.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end


def bulk_tweet_shortener(array_tweets)
  array_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 131
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length < 140
    puts tweet
  else
    truncd = word_substituter(tweet)
    if truncd.length > 140
      truncd[0..134] << "(...)"
    else
      truncd
    end
  end
end

