def factorial(number)
  if number == 0
    return 1
  else
    total = 1
    until number == 1
      total = total * number
      number = (number-1)
    end
    return total
  end
end
puts factorial(6)

def factorial(number)
  if number == 0
    return 1
  else
    return (number * factorial(number-1))
  end
end
puts factorial(5)