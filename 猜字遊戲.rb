judge = true        #設定一個bool變數，用於判斷是否跳出while迴圈敘述
while judge         #建立一個while迴圈敘述
  c =15         #設定一個變數，和使用者輸入的值進行比較
  puts "猜一個0--100之間的數"  #輸出資訊
  d = gets.to_i          #獲得用於輸入的值
  if c > d       #判斷輸入
    puts "你輸入的數字小了"
  end
  if c < d
    puts "你輸入的數字大了"
  end
  if c == d
    puts "恭喜你，猜對了！"
    judge = false     #將judge設定為false，跳出while迴圈敘述
  end             #if敘述結束標記
end             #while敘述結束標記
