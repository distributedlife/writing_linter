# encoding: UTF-8
require "./common"

def cliche_list
	cliches = []

	File.open("cliche_list") do |file|
		file.readlines.each do |line|
			cliches << line.downcase.strip
		end
	end

	cliches
end

def check_for_cliches passage, cliches
	notices = []

	sentences_in(passage).each do |original_sentence|
	    sentence = original_sentence.downcase

	    # cliches.select {|cliche| sentence.include? cliche }.each {|cliche| notices << "cliche: '#{cliche}'"}
	    cliches.select {|cliche| cliche.match sentence }.each {|cliche| notices << "cliche: '#{human_readable_regex cliche}'"}
	end

 	notices
end