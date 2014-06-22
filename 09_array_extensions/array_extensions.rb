class Array


	def sum
		self.inject(0) {|sum, a| sum + a}
	end

	def square
		self.map {|num| num**2}
	end

	def square!
		self.map! {|num| num**2}
	end

end
