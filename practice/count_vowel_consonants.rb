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
  
  def is_vowel?(str)
    value = false
    for i in ['a','e','i','o','u']
      if i == str
        value = true
      end
    end
    value
  end

  # def is_consonant?(str)
  #   value = false
  #   for i in ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w,','x','y','z']
  #     if i == str
  #       value = true
  #     end
  #   end
  #   value
  # end

  def is_consonant?(str)
    value = false
    if !is_vowel?(str)
      if str.match?(/[a-zA-Z]/)
        value = true
      end
    end
    value
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
    return "vowels are #{vow}","consonants are #{cons}"
  end
  
  p vow_con("aaaoi.....qased.")