import Foundation

//Функция четности
func even(number n:Int) {
    if (n % 2 ) == 0{
        print("Число \(n) четное.")
    } else {
        print("Число \(n) нечетное")
    }
}

even(number: 444534)

//Функция кратности трем
func triple(number n:Int) {
    if (n % 3 ) == 0{
        print("Число \(n) кратно трем.")
    } else {
        print("Число \(n) некратно трем.")
    }
}
triple(number: 113213133)

//Функция проверки четности для массива
func evenArray(number n:Int) ->Bool{
    if n % 2 == 0 {
    return true
    } else {
        return false
    }
}

//Функция проверки кратности трем для массива
func tripleArray(number n:Int) ->Bool{
    if n % 3 == 0 {
        return true
    } else {
        return false
    }
}

//Создаем массив
var array:[Int] = []
for i in 1...100 {
    array += [i]
}

// как задать величену индекса(в данном случае 50 и 30) чтобы не было ошибки "Index out of range"? array.count также вызывает такую же ошибку 
for i in 0...50 {
    if evenArray(number: array[i]) == true {
        array.remove(at: i)
    }
}
for i in 1...33 {
    if tripleArray(number: array[i]) == true {
        array.remove(at: i)
    }
}
print("Массив чисел от 1 до 100 без четных и кратных трем:")
print(array)

print("")

    // Числа Фибонначи

//var array2:[Int] = [] если так задать массив, то будет ошибка "Index out of range".

var array2 = Array(repeating: 0, count: 50)

for i in 0...49 {
    if i < 2 {
        array2[i] += i
    }else {
        array2[i] += array2[i-1] + array2[i-2]
    }
}
print("Массив из \(array2.count) чисел Фибонначи:")
print(array2)
print("")

    // Простые числа


    // Функция проверки кратности
func simpleNumber(number n:Int, number1 m:Int) ->Bool{
    if n % m == 0 {
        return true
    } else {
        return false
    }
}

// Создаем массив
var array3:[Int] = []
for i in 1...100 {
    array3 += [i]
}

    // не получилось запихнуть все в один цикл FOR - возникает ошибка "Index out of range". Пришлось повторить итерацию подбирая i. 
var p = 2
// удаление из массива чисел крантых P
for i in 2...51{
    if simpleNumber(number: array3[i], number1: p) == true {
        array3.remove(at: i)
    }
}
// задание переменной P - следующее число в массиве > P
for i in 0 ... 15 {
    if p >= array3[i] {
        continue
    }
    p = array3[i]
    break
}
// удаление из массива чисел крантых P
for i in 3...35{
    if simpleNumber(number: array3[i], number1: p) == true {
        array3.remove(at: i)
    }
}
// задание переменной P - следующее число в массиве > P
for i in 0 ... 15 {
    if p >= array3[i] {
        continue
    }
    p = array3[i]
    break
}
// удаление из массива чисел крантых P
for i in 4...28{
    if simpleNumber(number: array3[i], number1: p) == true {
        array3.remove(at: i)
    }
}
// задание переменной P - следующее число в массиве > P
for i in 0 ... 15 {
    if p >= array3[i] {
        continue
    }
    p = array3[i]
    break
}
// удаление из массива чисел крантых P
for i in 5...25{
    if simpleNumber(number: array3[i], number1: p) == true {
        array3.remove(at: i)
    }
}
// задание переменной P - следующее число в массиве > P
for i in 0 ... 15 {
    if p >= array3[i] {
        continue
    }
    p = array3[i]
    break
}
// удаление из массива чисел крантых P
for i in 6...25{
    if simpleNumber(number: array3[i], number1: p) == true {
        array3.remove(at: i)
    }
}

print("**********")
print("Простые числа")

let wikiArray4 = [1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
print("Список чисел моих вычислений:")
print(array3)

print("Список чисел из ВИКИ:")
print(wikiArray4)
