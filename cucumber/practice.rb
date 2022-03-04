# candidate ID = 91129
class Interview
	def reverse(arg)
		str = arg.split('')
		j = str.size
		rev = []
		for i in str
			rev[j] = i
			j-=1
		end
		rev
  end

  def arrayToString(arg)
    rev = reverse(arg)
    rev_str = ''
    rev.to_s
    rev.join('')
  end

  def palindrome(arg)
    rev = arrayToString(arg)
    return true if arg == rev
  end

  def matchingCharacters(arg)
    str = arg.split('')
    match = {}
    for i in str
      match[i] = 0
    end
    for i in str
      match[i] = match[i] + 1 if match.key?(i)
    end
    match
  end

  # def nonMatchingCharactors(arg)
  #   str = arg.split('')
  #   mc = matchingCharacters(arg)
  #   nmc = {}
  #   for i in 0...mc.size
  #     nmc[str[i]] = 1 if mc[str[i]] == 1
  #   end
  #   nmc
  # end

  def nonMatchingCharactors(arg)
    str = arg.split('')
    mc = matchingCharacters(arg)
    nmc = {}
    for i in str
      mc.delete(i) if mc[i] != 1
    end
    mc
  end

  def countOfVowelsAndConsonants(arg)
    str = arg.split('')
    count = { 'vowles' => 0, 'consonants' => 0 }
    for i in str
      if ['a', 'e', 'i', 'o', 'u'].include?(i)
        count['vowles'] = count['vowles'] + 1
      else
        count['consonants'] = count['consonants'] + 1
      end
    end
    count
  end
end

puts Interview.new.reverse('1234')
