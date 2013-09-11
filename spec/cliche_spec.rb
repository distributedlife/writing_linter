# encoding: UTF-8
require './cliche'

describe "cliche" do
	it "should report any strings that appear in the clieche list" do
		cliche = [/you ain't seen nothin' yet/]

		expect(check_for_cliches("Let me tell you that you ain't seen nothin' yet", cliche)).to include("cliche: 'you ain't seen nothin' yet'")
	end

	it "should handle wildcards" do
		cliche = [/what's a little .* between friends/]

		expect(check_for_cliches("What's a little murder between friends", cliche)).to include("cliche: 'what's a little .* between friends'")
	end
end
