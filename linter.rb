# encoding: UTF-8
require 'rubygems'
require './common'

if ARGV.first.nil?
	raise "Usage: ruby linter.rb path/to/text"
end

Dir.glob(File.join("#{ARGV.first}", "**")).each do |filename|
	lint_file filename
end