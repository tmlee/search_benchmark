module SearchBenchmark
	class Assertion
	
		def initialize(target)
			@target = target
		end

		def self.assert_include(result, args)
			unless result.include?(args[:expected])
				puts "id #{args[:expected]} not found in #{args[:term]}".colorize(:red)
				false
			else
				true
			end
		end
	
	end
end