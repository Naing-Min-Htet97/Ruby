operation=""
num1=0
num2=0
history=[]

while operation !="e" 
    puts "1.Addition 2.Subtraction 3.Multiplication 4.Dividing" 
    puts "h.history"  
    puts "e.exit"
    operation= gets.chomp 

    def input
      puts "Enter a number:"
      num1=gets.chomp.to_i
      puts "Enter a number:"
      num2=gets.chomp.to_i
      return num1,num2
    end
    
if operation=="h"
    puts   history

elsif operation=="1"
    num = input
    num1=num[0]
    num2=num[1] 
    num3 = "#{num1+num2}"
    result = "#{num1} + #{num2} = #{num1+num2}"
    puts num3
    history.append(result)

elsif operation=="2"
    num= input
    num1=num[0]
    num2=num[1]
    num3="#{num1-num2}"
    result= "#{num1} - #{num2} = #{num1-num2}"
    puts num3
    history.append(result)
    
elsif operation=="3"
    num= input
    num1=num[0]
    num2=num[1]
    num3="#{num1*num2}"
    result= "#{num1} * #{num2} = #{num1*num2}"
    puts num3
    history.append(result)

elsif operation=="4"
    num= input
    num1=num[0]
    num2=num[1]
    num3="#{num1/num2}"
    result="#{num1} / #{num2} = #{num1/num2}"
    puts num3
    history.append(result)

else puts "Wrong input"

end    
end      