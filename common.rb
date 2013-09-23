def remove_punctuation word
	word.split(" ").map {|w| w.gsub(/\W/, '')}.join(" ")
end

def words_in passage
	passage.split(" ")
end

# TODO:replace this with something so much better.
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

def human_readable_regex regex
	regex.to_s.gsub("(?-mix:", "").gsub(")", "")
end

def first_index_of word, sentence
	words_in(sentence).index(word)
end
