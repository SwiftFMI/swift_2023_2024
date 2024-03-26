print("Hello SwiftFmi!")

func a(a: Int) {
    print("Int")
}

// (Int)-> () -> 

func a(a: Double, f: (Double) -> ()) {
    print("Double")
}

// 

// a(a: 3.0)

struct Info {
    var version: String
}

struct Merchandise {
	var name: String
	var pricePerUnit: Double
	var isAvailable: Bool? // = nil

    private var _weight: Double
    var weight: Double {
        set {
            _weight = newValue
        }
        get {
            _weight
        }
    }

    mutating func setWeight(_ newValue: Double) {
        self._weight = newValue
    }
    func getWeight() -> Double {
        _weight
    }
    // var version: String {
    //     get {
    //         return "1.0.0"
    //     }
    // }
    var version: String {
        "1.0.0"
    }

    var info: Info?

    init(name: String = "no name", pricePerUnit: Double = 0.0, isAvailable available: Bool? = nil) {
        self.name = name
        self.pricePerUnit = pricePerUnit
        self.isAvailable = available
        self._weight = 0.0

        self.info = Info(version: "1.0.1")
    }

    func prettyPrint() {
        print("**********")
        print("\(self.name)")
        print("**********")
    }

    subscript (index:Int) -> String {
        get {
            if index == 0 {
                return name
            }
            return "Invalid proprty!"
        }
            
        set(newValue) {
            if index == 0 {
                self.name = newValue
            } else {
                print("nothing")
            }
        }
    }

    subscript (point: (x:Int, y: Int)) -> String {
        get {
            if point.x == 0 {
                return name
            }
            return "Invalid proprty!"
        }
            
        set(newValue) {
            if point.x == 0 {
                self.name = newValue
            } else {
                print("nothing")
            }
        }
    }
}

var bear = Merchandise(name: "Bear")
var m2 = bear
bear.name = "Пух"

print("^^^^^^^")
m2.prettyPrint()
print("Bear = \(bear)")
print("Merchant name = \(bear.name)")
print("Merchant instance version = \(bear.version)")
bear.setWeight(100)
print("Merchant instance weight = \(bear.weight)")
bear.prettyPrint()
var nullableMerch: Merchandise?
nullableMerch = nil
// nullableMerch = bear
//guard 
// !
// print("Bear = \(nullableMerch!)") // Don't use it
if let m = nullableMerch {
    print("Bear = \(m)")
} else {
    print("It's nil!")
}

func printMerch(m: Merchandise?) {
    guard let m = m else {
        print("Argument is nil!!!")
        return
    }

    print("**********")
    print("\(m.name)")
    print("**********")
}

func printMerchIf(m: Merchandise?) {
    if let m = m {
        print("**********")
        print("\(m.name)")
        print("**********")
    } else {
        print("Argument is nil!!!")
        return
    }
}

// printMerch(m: nullableMerch)
printMerchIf(m: nullableMerch)

var a = 1
var b = a
print("Initial values:")
print("a = \(a)")
print("b = \(b)")
	
a += 5
// b = a
print("Modify a += 5.")
print("a = \(a)")
print("b = \(b)")
	
func modify(value: inout Int) {
	value = 3
}
	
print("Example with functions.")
print("b = \(b)")
modify(value: &b)
print("Modify b = 3.")
print("b = \(b)")
	
//изход в конзолата:
//Initial values:
//a = 1
//b = 1
//Modify a += 5.
//a = 6
//b = 1
//Example with functions.
//b = 1
//Modify b = 3.
//b = 3


bear[0] = "Мечо Пух"
print("Subscript [0] = \(bear[0])")

print("Subscript [0] = \(bear[(x:0, y:1)])")


print("Merchant.name = \(bear.name)")
// bear.info?.version = "2.0.0"
bear[keyPath: \.name] = "2.0.0"
print("Merchant.name = \(bear.name)")
print("Merchant.name = \(bear[keyPath: \.info?.version])")

// let arr = [bear, m2]
// let names = arr.map(\.name)

// print(names)



struct LazyStruct {
	var count: Int
	init (count: Int) {
		print("\(LazyStruct.self) се конструира чрез -> \(#function)")
		self.count = count
	}
}

struct NormalStruct {
	var count: Int
	init (count:Int) {
		print("\(NormalStruct.self) се конструира чрез -> \(#function)")
		self.count = count
	}
}
	
struct ExampleLazyProperty {
	lazy var s:LazyStruct = LazyStruct(count: 5)
	var normal:NormalStruct = NormalStruct(count: 10)
	var regularInt = 5
	    
	init() {
		print("\(ExampleLazyProperty.self) се конструира чрез -> \(#function)")
	}
}
	
var lazyPropExample = ExampleLazyProperty()
lazyPropExample.regularInt = 15
print("Стойноста в нормалното пропърти 'regularInt' e \(lazyPropExample.regularInt)")
print("Стойноста в нормалното пропърти 'normal' e \(lazyPropExample.normal.count)")
print("Стойноста на мързеливото пропърти е \(lazyPropExample.s.count)")
// print("Стойноста в нормалното пропърти 'regularInt' е \(lazyPropExample.regularInt)")
