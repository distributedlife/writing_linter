# encoding: UTF-8
require './common'
require './banned_words'
require './expensive_words'
require './replacements'
require './sentence_checks'


def lint_file filename
	passage = read_file_into_string(filename)

	banned_words(passage, banned_words_list).each { |notice| print_notice_with_file filename, notice }
	expensive_words(passage, fifty_cent_words_list).each { |notice| print_notice_with_file filename, notice }
	replace_me(passage, replace_me_words_list).each { |notice| print_notice_with_file filename, notice }
	sentence_checks(passage, sentence_checks_list).each { |notice| print_notice_with_file filename, notice }
end