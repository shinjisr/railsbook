class Apple
  # 定义第一个方法
  def info1
    # 输出实例变量@a
    puts @a
  end
  # 定义第二个方法
  def info2
    # 为实例变量赋值
    @a = "Hello";
  end

  def next
    #測試 next
    count = 1
    array = []
    until count > 5
      puts "what next: #{@a}, number#{count}"
      count += 1
      next
    end
    2.times { array.push(count + 1)
    puts array
    }

  end
end

apple = Apple.new
apple.info2
apple.info1
apple.next


