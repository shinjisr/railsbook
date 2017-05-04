a = 3
if a > 10
  result = "big"
elsif a > 5
  result = "bigger than 5"
elsif a > 3
  result = "bigger than 3"
else
  result = "small"
end

result

# 可以縮減為：

result = ("big" if a > 10) ||
  ("bigger than 5" if a > 5) ||
  ("bigger than 3" if a > 3) || "small"

result
