def valid_triangle?(a, b, c)
  if a == 0
  return false
  elsif b == 0
  return false
  elsif c == 0
  return false
  elsif (a*a)+(b*b) == (c*c)
    return true
  elsif (a*a)+(c*c) == (b*b)
    return true
  elsif (b*b)+(c*c)==(a*a)
    return true
  elsif a == b && a == c
    return true
   elsif a == b || a == c || b == c
    return true
  else
    return false
  end
end