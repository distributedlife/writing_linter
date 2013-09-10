# encoding: UTF-8

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