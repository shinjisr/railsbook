class Test
	CONST='Hello World!';		#定義常數
	puts CONST					#類別內部存取常數
	def info					#建立方法
		puts CONST				#在類別方法中存取常數
	end
	class TestChild				#建立內部類別
		puts CONST				#在內部類別中存取常數
	end
end
class Sub<Test    				#建立子類別
	puts CONST					#在子類別中存取父類別常數
end
#puts CONST						#出現錯誤
puts Test::CONST				#存取Test類別中的CONST常數，輸出"Hello World!"

class First
	INFO='Ruby';				#定義常數
end
class Second
	INFO='Hello'				#定義常數
	class  FirstChild < First   
		puts INFO 				#存取外部類別中的常數
		puts First::INFO 		#存取父類別中的常數
	end
end
