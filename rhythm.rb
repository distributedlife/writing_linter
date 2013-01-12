require 'rubygems'
require 'ap'

def load_dictionary
  dict = {}

  File.open('converted.txt') do |file|
    file.readlines.each do |line|
      parts = line.split(' ')
      dict[parts.first.downcase] = parts.last
    end
  end

  dict
end

dict = load_dictionary
content = ARGV.first

def parse dict, text
  parsed = []

  text.split(" ").each do |word|
    word.downcase!

    parsed << [word, dict[word]]
  end

  parsed
end

parsed = parse dict, content

parsed.each do |word|
  puts "#{word.first}\t"
  puts "#{word.last}\t"
end
