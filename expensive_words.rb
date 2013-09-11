# encoding: UTF-8
require "./common"

def fifty_cent_words_list
  load_word_list "most_common_1000_words"
end

def load_word_list filename
	words = []

	File.open(filename) do |file|
		file.readlines.each { |line| words << line.strip }
	end

	words.map {|word| remove_punctuation(word.downcase)}
end

def expensive_words passage, words
  notices = []

  words_in(passage).each do |word|
    word = remove_punctuation word.downcase

    unless words.include? word
      notices << "expensive: '#{word}'"
    end
  end

 notices
end