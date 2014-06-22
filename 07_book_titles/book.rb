class Book
	attr_accessor :title

	EXCEPTION = ['and', 'in', 'the', 'over','to','a','of','an']

def initiliaze(book = "")
	@title = book
end

def title
	@title.capitalize!.split.each {|word| word.capitalize! unless EXCEPTION.include?(word) }.join(' ')
end

end