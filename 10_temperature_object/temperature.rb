class Temperature

	def initialize(hash)
		@hash=hash
	end

	def to_celsius
		@hash.each do |key, value|
			if key == :f
				return (value - 32)*(5/9.0)
			else
				return value
			end
		end
	end

	def to_fahrenheit
		@hash.each do |key, value|
			if key == :c
				return (9.0/5)*value + 32
			else
				return value
			end
		end
	end

	def self.in_celsius(temp)
		Temperature.new({:c => temp})
	end

	def self.in_fahrenheit(temp)
		Temperature.new({:f => temp})
	end

end

class Celsius < Temperature
	def initialize(temp)
		@hash = {:c => temp}
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		@hash = {:f => temp}
	end
end