# candidate ID = 91129
class Interview
	def reverse(arg)
		rev_str = []
		str  = arg.split('')
		j = str.size
			(0..str.size).each do |i|
				rev_str[i] = str[j]
				j-=1
			end
			puts rev_str
		end
end
Interview.new.reverse("sourabh")