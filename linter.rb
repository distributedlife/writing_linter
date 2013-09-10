# encoding: UTF-8
require 'rubygems'
require './common'
require './expensive_words'
require './replacements'
require './sentence_checks'

if ARGV.first.nil?
	Dir.glob("text/**").each do |filename|
		lint_file filename
	end
else
	lint_file ARGV.first
end