import Foundation

//по уроку

//перечисления enum
enum carType {
    case Sportcar
    case Lorry
    case Van 
    case Oldtimer
    case SemiTruck
    case ConcreteMixer
    case FamilySaloon
    case OffRoad
    
    enum specialCar {
        case Police
        case FireDep
        case Ambulance
        case SWAT
    }
    enum specialData {
        case Police(speed: Int)
        case FireDep(speed: Int)
        case Ambulance(speed: Int)
        case SWAT(speed: Int)
    }
    
    enum carSpeed: Int {
        case city = 50
        case urban = 90
        case suburban = 110
    }
    
}

//первое обьявление переменной
var randomCar1 = carType.Lorry
print(randomCar1)
// последующие сокращенные
randomCar1 = .FamilySaloon
print(randomCar1)

//вызов значения перечисления
var randomCar1Speed = carType.carSpeed.city
print(randomCar1Speed)
print(randomCar1Speed.rawValue)


var randomCar2 = carType.specialData.FireDep(speed: 120)
randomCar2 = .FireDep(speed: 150)
var speedLimit = carType.carSpeed.city.rawValue

switch randomCar2 {
case .FireDep(let sp) where sp > speedLimit: 
    //константа sp - как пример, что не обязательно совпадение названия константы/переменной и параметра перечисления(ассоциированный параметр)
    print("Пожарным можно превышать скорость \(speedLimit) и двигаться со скоростью \(sp)") 
default:
    break 
}

/* структуры struct
struct testName {
    //содержит свойства, методы, конструктор
}
 var test: testName //экземпляр структуры
 */

struct policeCar {
    //свойства
    var carNumber: Int = 1
    var seatsNumber: Int = 2
    var ammoLoad: Int = 100
    enum armorTableClass: Int {
        case Light = 1
        case Normal = 2
        case Heavy = 3
        case SWAT = 4
    }
    var armorClass = armorTableClass.Normal
    
    //методы - это функции, которые созданы внутри структуры или класса
    func armorClassDescript() {
        print("Экипаж номер \(carNumber) с уровнем защиты \(armorClass) категории \(armorClass.rawValue).")
    }
    func ammoCountDescript() {
        print("Экипаж номер \(carNumber) с запасом патронов \(ammoLoad) штук.")
    }
    mutating func addAmmo(countOfAmmo: Int) {
        ammoLoad += countOfAmmo
    }
    mutating func addAmmo2(ammoLoad: Int) {
        self.ammoLoad += ammoLoad
            //self означает что этот параметр свойство структуры; без self - это аргумент который является входным параметром
    }
    
    /*конструктор(инициализатор)
     
    как в конструктор можно добавить свойство с перечислением?
     enum armorTableClass: Int {
     case Light = 1
     case Normal = 2
     case Heavy = 3
     case SWAT = 4
     }
     var armorClass = armorTableClass.Normal
     */
    
}
var policeCar1 = policeCar()

print(policeCar1)

var policeCar2 = policeCar(carNumber: 2, seatsNumber: 3, ammoLoad: 200,armorClass: policeCar.armorTableClass.Light)

print("Экипаж номер \(policeCar2.carNumber) класс защиты \(policeCar2.armorClass.rawValue).")
print("Запас патронов экипажа номер \(policeCar2.carNumber) равен \(policeCar2.ammoLoad) штук.")

if policeCar1.ammoLoad < policeCar2.ammoLoad {
    print("На вызов едет экипаж номер \(policeCar2.carNumber)." )
    print("Экипажу номер \(policeCar1.carNumber) пополнить запас патронов." )
}else{
    print("Принять вызов ближайшему экипажу.")
}

if policeCar1.armorClass.rawValue < policeCar2.armorClass.rawValue {
    print("На вызов едет экипаж номер \(policeCar2.carNumber) с лучшей защитой.")
}else{
    print("На вызов едет экипаж номер \(policeCar1.carNumber) с лучшей защитой.")
    }

policeCar1.armorClassDescript()
policeCar2.armorClassDescript()
policeCar1.addAmmo(countOfAmmo: 50)
policeCar1.ammoCountDescript()
policeCar1.addAmmo2(ammoLoad: 40)
policeCar1.ammoCountDescript()
