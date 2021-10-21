import Foundation
//старался использовать все методы которые мы рассмотрели на уроке

print("Решаем квадратное уравнение")
var form1 = ["A","X^2","B","X","C"]
print("Формула уравнения \(form1[0])*\(form1[1]) + \(form1[2])*\(form1[3]) + \(form1[4]) = 0")

//вроде как тут необходимо озвучить переменную и присвоить ей nil, а потом получить ее значение
    //D=0 a=1,b=-6,c=9
    //D<0 a=6.5,b=-6,c=9
    //D>0 a=1,b=-2,c=-3

var a:Double = 6.5  
var b:Double = -2
var c:Double = -9
var x:Double? = nil
var d:Double? = nil

var form2:[String:Double] = [:]
form2["A"] = a
form2["B"] = b
form2["C"] = c
print("Пользователь вводит значения A,B,C")
print("A = \(form2["A"]!)")
print("B = \(form2["B"]!)")
print("C = \(form2["C"]!)")
print("Уравнение \(form2["A"]!)*X^2 + (\(form2["B"]!))*X + (\(form2["C"]!)) = 0")

d = b*b-4*a*c

if d!<0 {
    print("Дискриминант = \(d!)")
    print("Дискриминант отрицательный, уравнение не имеет корней.")
}
else
if d!>0{
    print("Дискриминант = \(d!)")
    print("Дискриминант положителен, уравнение имеет два корня.")
    x = (-b+pow(Double(d!),1/2))/2*a
    print("Корень X1 = \(x!)")
    x = (-b-pow(Double(d!),1/2))/2*a
    print("Корень X2 = \(x!)")
}

else {
    x = (-b-pow(Double(d!),1/2))/2*a
    print("Дискриминант = \(d!)")
    print("Дискриминант равен нулю, уравнение имеет один корень.")
    print("Корень X = \(x!)")
}

print("")
print("")
print("Решаем задачу с треугольником")

var cat1:Double = 8
var cat2:Double = 17.5
//хочешь задать nil, тогда ставь ?, а при вызове переменной !
var GP:Double? = nil
var P:Double? = nil
var S:Double? = nil

print("Катет1 равен \(cat1)")
print("Катет2 равен \(cat2)")

GP = pow((pow(Double(cat1),2)+pow(Double(cat2),2)),1/2)
print("Гипотенуза равна \(GP!)")

P = cat1+cat2+GP!
print("Периметр равен \(P!)")

S = cat1*cat2/2
print("Площадь равна \(S!)")


print("")
print("")
print("Решаем задачу с банком")

var prof:Double? = nil
var start:Double = 1000
print("Начальный вклад \(start)")

var year:Double = 5
print("Срок вклада в годах равен \(year)")

var proc:Double = 12
print("Ежегодный процент по вкладу равен \(proc)%")
prof = start*pow((1+Double(proc)/100), year)
print("Итоговый вклад равен \(prof!)")









