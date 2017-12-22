require "spec_helper"


describe "#catch_phrase" do
	it "puts out a catch phrase" do
		phrase = "it's me, marc"
		expect{catch_phrase}.to output("it's me, marc").to_stdout
	end
end