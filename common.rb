# encoding: UTF-8
require './expensive_words'
require './replacements'
require './sentence_checks'

def remove_punctuation word
	word.split(" ").map {|w| w.gsub(/\W/, '')}.join(" ")
end

def words_in passage
	passage.split(" ")
end

def sentences_in passage
	passage.split(".")
end

def read_file_into_string filename
	passage = ""

	File.open(filename) do |file|
		file.readlines.each {|line| passage += line }
	end

	passage
end

def print_notice_with_file filename, notice
	puts "#{filename}: #{notice}"
end

def lint_file filename
	passage = read_file_into_string(filename)

	expensive_words(passage, fifty_cent_words_list).each { |notice| print_notice_with_file filename, notice }
	replace_me(passage, replace_me_words_list).each { |notice| print_notice_with_file filename, notice }
	sentence_checks(passage, sentence_checks_list).each { |notice| print_notice_with_file filename, notice }
end