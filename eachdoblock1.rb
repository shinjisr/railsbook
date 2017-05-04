result = 0
array = [2, 3, 4, 5, 6]
array.each do |value|       #從do到end中間是一個block
  result = result + value     #each方法讓數列中每個值都執行一次該block
end                 #|value|代表數列裡的變數。value變數不可省略，也可以叫他Ａ或Ｂ。
result
#=>20
# 由於array數列中有五個值，因此總共會執行五次，帶入不同的值
#result = result + 2 + 3 + 4 + 5 + 6
#若是邏輯簡單，可用一行來處理，可以簡化為以下：
array.each {|value| result = result + value }
