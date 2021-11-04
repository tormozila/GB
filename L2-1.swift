import Foundation
import UIKit


// задать массив
var  arr = [Int](1...100)

var arr2:[Int] = []
for i in 1 ... 100 {
    arr2.append(i)
}

for element in arr {
    if (element % 2) == 0 || (element % 3) != 0 {
        arr.remove(at: arr.firstIndex(of: element)!)
    }
}

print(arr)

func fib(count: Int) -> [Float] {
    var array: [Float] = [1,2]
    for i in 0 ... count {
        array.append(array[i] + array[i+1])
    }
    return array
}

print(fib(count: 30))

