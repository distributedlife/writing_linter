# encoding: UTF-8
require './rhythm'

describe "meter of" do
	it "When I do count the clock that tells the time" do
		parsed = get_rhythm(load_dictionary, "When I do count the clock that tells the time")
		expect(compress_beat(parsed)).to eq "x/x/x/x/x/"
	end

	it "To swell the gourd, and plump the hazel shells" do
		parsed = get_rhythm(load_dictionary, "To swell the gourd, and plump the hazel shells")
		expect(compress_beat(parsed)).to eq "x/x/x/x/x/"
	end

	it "Now is the winter of our discontent" do
		parsed = get_rhythm(load_dictionary, "Now is the winter of our discontent")
		expect(compress_beat(parsed)).to eq "/xx/x/x/x/"
	end

	it "To be or not to be, | that is the question" do
		parsed = get_rhythm(load_dictionary, "To be or not to be, that is the question")
		expect(compress_beat(parsed)).to eq "x/x/x//xx/x"
	end
end
