VOWEL = %w[a e i o u y]

def translate(word)
	word = word.split("")

	if VOWEL.include?(word.first)
	elsif VOWEL.include?(word[1])
		word << word.shift
	elsif VOWEL.include?(word[2])
		word << word.shift(2)
	end
	word.join("") + "ay"
end