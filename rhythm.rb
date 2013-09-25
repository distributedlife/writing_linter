require './common'

def load_dictionary
  dict = {}

  File.open('converted.txt') do |file|
    file.readlines.each do |line|
      parts = line.split(' ')
      dict[parts.first.strip.downcase] = parts.last.strip
    end
  end

  dict
end

def get_rhythm dict, text
  parsed = []

  words_in(text).each do |word|
    cleaned = word.strip.gsub(",","").downcase
    parsed << {:word => cleaned, :beat => dict[cleaned]}
  end

  parsed
end

def compress_beat words
  words.map {|word| word[:beat]}.join("")
end


passage = ARGV.first
unless passage.nil?
  puts compress_beat(get_rhythm(load_dictionary, passage))
end