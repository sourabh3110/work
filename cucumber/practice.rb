# candidate ID = 91129
class Interview

	def reverse(arg)
		rev_str = []
		str  = arg.split('')
		j = str.size-1
			(0...str.size).each do |i|
				rev_str[i] = str[j]
				j-=1
			end
			rev_str
		end

		def arrayToString(arg)
			rev = self.reverse(arg)
			rev_str = ""
			rev.to_s
			rev.join("")
		end

		def palindrome(arg)
			rev = arrayToString(arg)
				if arg == rev
					return true
				end
		end

		def matchingCharacters(arg)
			str = arg.split('')
			match = {}
			for i in str
				match[i] = 0
			end
			for i in str
				if match.key?(i)
					match[i] = match[i]+1
				end
			end
			match
		end

		def nonMatchingCharactors(arg)
			str = arg.split('')
			mc = matchingCharacters(arg)
			nmc = {}
			for i in 0...mc.size
				if mc[str[i]] == 1
					nmc[str[i]] = 1
				end
			end
			nmc
		end

end

puts Interview.new.nonMatchingCharactors("aabccdeefffgggg")