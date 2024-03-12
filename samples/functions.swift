// функиции - лекция 03

func myFunction() {
    // тяло на функцията
    print("Това е функцията!")
    print("Това е функцията!")
    print("Това е функцията!")
}

// myFunction()
// print("Това не е функция.")
// myFunction()

//func sum(a a: Int, b b: Int)
func sum(a: Int, b: Int) {
    print(a + b)
}


func sum(first a: Int, second b: Int) {
    // a += 10
    print(a + b)
}

sum(a: 3, b: 3) // 6
sum(first: 4, second: 4) // 8

func sum(_ a: Int, _ b: Int) {
    print(a + b)
}

sum(5, 5)

let vA = (1, 1)
let vB = (2, 2)
typealias Vector = (Int, Int)

// print(vA + vB)

func sumVectors(a: Vector, b: Vector) -> Vector {
    // a.0 += 3
    // let temp = (a.0 + 3, a.1)
    return (a.0 + b.0, a.1 + b.1)
}

// draw(`in`: canvas, figuer: circle )
// draw(canvas, circle)
let sumV = sumVectors(a: vA, b: vB)
print(sumV)

let zeroVector = (0, 0)

func checkIfZero(vector: Vector) -> Bool {
    return vector == zeroVector
}

let v11 = (2, 2)
print("Is \(v11) a zero vector? \(checkIfZero(vector: v11))")

func countdown(from start: Int) {
    // print("function: \(#function)")
    if start <= 0 {
        print("Countdown complete!")
    } else {
        print(start)
        countdown(from: start - 1)
        print(start)
    }
}

// countdown(from: 10)

func noResult() {
    print("No result")
}

func noResult2() -> () {
    print("No result")
}

func noResult3() -> Void {
    print("No result")
}

func maxItemIndex(numbers:[Int]) -> (item:Int, index:Int) {
    var index = -1
	var max = Int.min
    
	for (i, val) in numbers.enumerated() {
		if max < val {
            max = val
            index = i
        }
	}
    	
    	return (max, index)
}
		
let maxItemTuple = maxItemIndex(numbers: [12, 2, 6, 3, 4, 5, 2, 10])
if maxItemTuple.index >= 0 {
	print("Max item is \(maxItemTuple.item).")
}


var outterVar = 5

func f1() {
    outterVar = 10
}

func increment(a: inout Int) {
    a += 1
}

var counter = 0
increment(a: &counter)
print("Counter = \(counter)")


// print("Outter var = \(outterVar)")
// f1()
// print("Outter var = \(outterVar)")

extension String {
    static func * (left: String, right: Int) -> String {
        if  right <= 0 {
            return ""
        }
        
        var result = left
        for _ in 1..<right {
            result += left
        }
        return result
    }
}

print("Hello world" * 10)

// extension String {
//     static func * (left: String, right: Int) -> String {
//         if  right <= 0 {
//             return ""
//         }
        
//         var result = left
//         for _ in 1..<right {
//             result += left
//         }
//         return result
//     }
// }

// extension Vector {
//     static func + (left: String, right: Int) -> String {
//         sumVectors(a: left, b: right)
//     }
// }

// Bool
// Int 
// Float
// Double
// String

// (Int, Int)

let arr = [Int]()
let arr2: [Int] = []

let dic = [String: Int]()

let set: Set = ["a", "b", "c"]

