# encoding: UTF-8

def sentence_checks_list
	words = {}

	File.open("sentence_checks_regex") do |file|
		file.readlines.each do |line|
			parts = line.split(':')

			words[/#{parts.first.downcase}/] = parts.last
		end
	end

	words
end

def sentence_checks passage, checks
	notices = []

	sentences_in(passage).each do |original_sentence|
	    sentence = remove_punctuation original_sentence.downcase

	    checks.each do |check, rule|
	    	if check.match sentence 
	    		notices << "sentence: #{rule.strip}. See: '#{original_sentence.strip}'"
	    	end
	    end
	end

	notices
end