class Timer
	attr_reader :hours, :minutes, :seconds

	def initialize(hours = 0, minutes = 0, seconds = 0)
		@hours = hours
		@minutes = minutes
		@seconds = seconds
	end

	def time_string
		"#{convert(@hours)}:#{convert(@minutes)}:#{convert(@seconds)}"
	end

	def convert(time)
		if time < 10
			"0#{time}"
		else
			time
		end
	end

	def seconds=(seconds)
		@seconds = seconds % 60
		self.minutes = seconds / 60
		time_string
	end

	def minutes=(minutes)
		@minutes = minutes % 60
		self.hours = minutes / 60
		time_string
	end

	def hours=(hours)
		@hours = hours
	end

end