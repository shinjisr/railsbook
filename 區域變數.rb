#2.3變數的作用域
def info
	name = "lxee"				#在方法中宣告變數
	puts name					#輸出
end
module Message
	name = "zhht"				#在模組中宣告變數
	puts name					#輸出
end
class Test
	name = "yound"				#在類別中宣告變數
	puts name
end
puts name						#在作用域外部除存取變數，出現錯誤
#存取區域變數
class First
	info = "Ruby";				#定義區域變數
	def showinfo
		puts info				#在類別內部方法中存取區域變數，出錯
	end
	class Sub
		puts info				#存取外部類別中的區域變數，出錯
	end
end
class FirstChild < First
	puts info					#存取父類別中的區域變數，出錯
end
#2.1.3 全域變數
#"$"開頭建立全域變數
$age=100;						#建立全域變數
class Person
	puts $age					#在類別中使用
end
def showinfo
	puts $age					#在方法中使用
end
showinfo
#通常情況下應儘量避免使用全域變數

