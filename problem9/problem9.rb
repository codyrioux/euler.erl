def get_hypotenuse(a, b)
  Math.sqrt(a**2 + b**2)
end
 
a = 1
b = 1
while (a < 1000) do
  while ((a**2 + b**2) < 1000**2) do
    c = get_hypotenuse(a, b)
    if (a + b + c) == 1000
      puts  "#{a} #{b} #{c}"
      exit(0)
    end
    b += 1
  end
  b = 1
  a += 1
end

