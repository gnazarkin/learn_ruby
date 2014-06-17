def echo(message)
	return "#{message}"
end

def shout(message)
	return "#{message.upcase}"
end

def repeat(word, times = 2)
	arr = []
	times.times do 
		arr << word
	end
	arr.join(' ')
end

def start_of_word(word, letter)
	word.split("")[0..(letter-1)].join
end

def first_word(message)
	message.split.first
end


def titleize(word)
	exceptions = ['and', 'over', 'the']
	word.capitalize!.split(/\W/).each {|word| word.capitalize! unless exceptions.include?(word)}.join(' ')
end