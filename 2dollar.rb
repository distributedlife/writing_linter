# encoding: UTF-8
require 'rubygems'

def read_in_fifty_cent_words
	fifty_cent_words = []
	File.open("most_common_1000_words") do |file|
		file.readlines.each { |line| fifty_cent_words << line.strip }
	end

	fifty_cent_words.each {|word| word.downcase!}

	fifty_cent_words
end

def remove_punctuation word
	word.gsub(',', '').gsub('.', '').gsub('"', '').gsub('”', '').gsub('’', '\'').gsub('“', '')
end

def get_2dollar_words passage, fifty_cent_words
  reject = []

  passage.split(" ").each do |word|
    word.downcase!
    word = remove_punctuation word

    unless fifty_cent_words.include? word
      reject << word
    end
  end

 reject
end

def read_file_into_string filename
	passage = ""

	File.open(filename) do |file|
		file.readlines.each {|line| passage += line }
	end

	passage
end

puts get_2dollar_words(read_file_into_string(ARGV.first), read_in_fifty_cent_words)