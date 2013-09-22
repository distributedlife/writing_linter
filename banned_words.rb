# encoding: UTF-8
require "./common"

def banned_words_list
  load_word_list "banned_words_list"
end

def load_word_list filename
	words = []

	File.open(filename) do |file|
		file.readlines.each { |line| words << line.strip }
	end

	words.map {|word| remove_punctuation(word.downcase)}
end

def banned_words passage, words
  notices = []

  words_in(passage).each do |word|
    word = remove_punctuation word.downcase

    if words.include? word
      notices << "banned: '#{word}'"
    end
  end

 notices
end