# encoding: UTF-8
require "./common"

def replace_me_words_list
	words = {}

	File.open("replacement_word_list") do |file|
		file.readlines.each do |line|
			parts = line.split(':')

			words[parts.first.downcase] = parts.last.downcase
		end
	end

	words
end

def replace_me passage, words
	notices = []

	words.each do |bad, good|
		if passage.include? bad then
			notices << "replace: '#{bad}' with '#{good}'"
		end
	end

 	notices
end