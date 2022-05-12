def percent(value,percent)
  (value*percent)/100
end

def recurring(amount,duration,percent)
  principle = amount
  duration.times do
    amount += percent(amount,percent)
  end
  amount - principle
end

p recurring(25000,62,11)