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