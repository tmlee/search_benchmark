require 'spec_helper'

describe SearchBenchmark::Assertion do

	describe ".assert_include" do
		it "returns false when result doesnt match expected" do
			expect(SearchBenchmark::Assertion.assert_include("hello", expected: "hellos", term: "dummy term")).to be_false
		end

		it "returns true when result matches expected" do
			expect(SearchBenchmark::Assertion.assert_include("hello", expected: "hello", term: "dummy term")).to be_true
		end
	end

end