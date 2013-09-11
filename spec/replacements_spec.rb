# encoding: UTF-8
require './replacements'

describe "replacements" do
	it "should suggest any replacments appearing in the word list" do
		expect(replace_me("Of course it's a good idea", {'good' => 'bad'})).to include("replace: 'good' with 'bad'")
	end
end
