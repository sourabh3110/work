def first_occor?(str)
  str = str.split('')
  first = {}
  for i in str
    first[i] = 0
  end
  for i in str
    first[i[0]] = first[i[0]]+1
  end
  first = first.map{|key| key if key[1] == 1 }.uniq.compact
  for i in str
    return str.index(i) if i == first.first.first
  end
end

p first_occor?("bbbbbbbbvghbvg , [xb32hs.j[cyd]fg rbfn2kfuyg v5fgve7f8b2dv4∞34∞4/5c78b 4g32s3f5t dgeabfp")