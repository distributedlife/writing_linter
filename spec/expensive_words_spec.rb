# encoding: UTF-8
require './expensive_words'

describe "expensive words" do
	it "should detect any words that do not appear in the word list" do
		expensive_words("hello world", ["hello"]).should eq ["expensive: 'world'"]
	end

	it "should ignore punctuation in words" do
		expensive_words("don't can't", ["dont"]).should eq ["expensive: 'cant'"]
	end

	it "should remove punctuation in word list" do
		expect(load_word_list("spec/with_punctuation")).to include "cant"
	end
end
