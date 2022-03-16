  def countOfVowelsAndConsonants(argument)
    string = argument.split('')
    count = { 'vowles' => 0, 'consonants' => 0 }
    for i in string
      if ['a', 'e', 'i', 'o', 'u'].include?(i)
        count['vowles'] = count['vowles'] + 1
      else
        count['consonants'] = count['consonants'] + 1
      end
    end
    count
  end

  def split(str)
    split = []
    for i in 0...str.size
      split << str[i]
    end
    split
  end
  
  def is_vowel?(str2)
    for i in ['a','e','i','o','u']
      if i == str2
        return true
      else
        return false
      end
    end
  end

  def is_consonant?(str2)
    for i in ['a','e','i','o','u']
      if i != str2 && str2.match?(/[[:alpha:]]/)
        return true
      else
        return false
      end
    end
  end
  
  def vow_con(str)
    str = split(str)
    vow = 0
    cons = 0
    for i in str
      if is_vowel?(i)
        vow += 1
      end
      if is_consonant?(i)
        cons += 1
      end
    end
    return "vowels are #{vow}", "consonants are #{cons}"
  end
  
  p vow_con("bbbbb..........aaa")