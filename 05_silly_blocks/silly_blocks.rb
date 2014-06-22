def reverser
	word = yield
	word.split.each(&:reverse!).join(" ")
end

def adder(num1=1)
	num = yield
	num+=num1
end

def repeater(num=1)
	num.times do 
		yield
	end
end

