# encoding: UTF-8
require 'rubygems'
require './common'
require './expensive_words'
require './replacements'
require './sentence_checks'

passage = read_file_into_string(ARGV.first)

puts expensive_words(passage, fifty_cent_words_list)
puts replace_me(passage, replace_me_words_list)
puts sentence_checks(passage, sentence_checks_list)