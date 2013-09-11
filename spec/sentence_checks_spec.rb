# encoding: UTF-8
require './sentence_checks'

describe "sentence checks" do
	it "should detect sentences that start with 'of course'" do
		sentence_checks("Of course it's a good idea", sentence_checks_list).should eq ["sentence: Don't start sentences with 'Of course'. See: 'Of course it's a good idea'"]
	end

	it "should detect sentences that start with 'naturally'" do 
		sentence_checks("Naturally it's a good idea", sentence_checks_list).should eq ["sentence: Don't start sentences with 'Naturally'. See: 'Naturally it's a good idea'"]
	end

	it "should detect sentences that start with 'obviously'" do
		sentence_checks("obviously it's a good idea", sentence_checks_list).should eq ["sentence: Don't start sentences with 'Obviously'. See: 'obviously it's a good idea'"]
	end

	it "should detect sentences where the speaker is introduced before their words" do
		sentence_checks('Mr Smith said "Tedious dialogue? Oh My!"', sentence_checks_list).should eq ["sentence: Start talking and then introduce the speaker. See: 'Mr Smith said \"Tedious dialogue? Oh My!\"'"]
		sentence_checks('Mr Smith said we should be warned.', sentence_checks_list).should eq []
		sentence_checks('"This is a bad idea." Said Mr Smith', sentence_checks_list).should eq []
	end
end
