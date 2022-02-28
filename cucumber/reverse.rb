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
end
ans = Interview.new
ans.reverse("nun")
puts ans.palindrome("nun")
ans.arrayToString("nun")