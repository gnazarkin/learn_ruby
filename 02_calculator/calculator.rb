def add (num1, num2)
	return num1 + num2
end

def subtract (num1, num2)
	return num1 - num2
end

def sum (array)
	return array.inject(0) {|sum,num| sum + num}
end
