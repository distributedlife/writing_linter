# encoding: UTF-8

def fifty_cent_words_list
	words = []

	File.open("most_common_1000_words") do |file|
		file.readlines.each { |line| words << line.strip }
	end

	words.each {|word| word.downcase!}

	words
end

def expensive_words passage, words
  notices = []

  words_in(passage).each do |word|
    word = remove_punctuation word.downcase

    unless words.include? word
      notices << "'expensive': '#{word}'"
    end
  end

 notices
end