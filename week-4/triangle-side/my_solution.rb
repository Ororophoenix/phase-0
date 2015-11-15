def valid_triangle?(a, b, c)
  if a == 0
    return false
  elsif b == 0
    return false
  elsif c == 0
    return false
  elsif a + b > c
    return true
  elsif a + c > b
    return true
  elsif b + c >a
    return true
  else
    return false
  end
end