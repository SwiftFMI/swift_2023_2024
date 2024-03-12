let message = 123 // "Hello SwiftFMI!"
var variable = "Hello"
variable += " Swift FMI!"
// variable += 123
// print(message)
print(variable)

/*


*/

var temperature = -1
 temperature += 33
if temperature <= 0 {
    print("Много е студено. Облечете се топло.")
} else if temperature > 30 {
    print("!(Много е студено).")
}


    let someNumber: Int = 1
    switch (someNumber) {
    // case 1:
    //     print("Едно")
    //     fallthrough
    case 1, 3:
        print("Три")
    default:
        print("Някакво друго число")
    }

    let count = 34
    let things = "ябълки"
    var expression: String
    switch count {
    case 0:
        expression = "николко"
    case 1..<10:
        expression = "няколко"
    case 10..<100:
        expression = "десетки"
    case 100..<1000:
        expression = "стотици"
    default:
        expression = "много"
    }
    print("\(count) са \(expression) \(things)")

    // let point = (x: 1, y: 1)
    // switch point {    
    // case (0, 0):
    //     print("точка (0, 0) е в началото на координатната система")
    // case (_, 0):
    //     print("точка (\(point.x), 0) се намира на абсциса х")
    // case (0, _):
    //     print("точка (0, \(point.1)) се намира на абсциса у")
    // case (-2...2, -2...2):
    //     print("точка (\(point.0), \(point.1)) е в квадрата")
    // default:    
    //     print("точка (\(point.0), \(point.1)) е извън квадрата")
    // }

    let point = (0, 1)
    switch point {
    case (let x, 0):
        print("точка (\(x), 0) се намира на абсциса х")
    case (0, let y):
        print("точка (0, \(y)) се намира на ордината у")
    case let (x, y):
        print("точка (\(x), \(y)) е някъде другаде")
    }
    let range = 1...5
    let range2 = [1, 2, 3, 4, 5]
    // for (index, element) in range2.enumerated() {
    //     print("\(index) по 5 е \(index * 5)")
    // }


    let base = 3
    let power = 10
    var answer = 1
    for _ in 1...power {
        answer *= base
    }
    print("\(base) на степен \(power) е \(answer)")

    let names = ["Емил", "Спас", "Иван", "Гошо"]
    for name in names {
        print("Здравей, \(name + "!!!!")!")
    }

    let numberOfLegs: Dictionary<String, Int> = [ "паяци": 8, "мравки": 6, "котки": 4]
    for (animalName, legCount) in numberOfLegs {
        print("\(animalName)те имат \(legCount) крака")
    }

    // number_of_legs

    let поздрав = "Здравей, свят!"
    print("Първият символ на поздравението е \(поздрав[поздрав.startIndex])")
    let 🐮 = "крави"

    print("две 🐮")

    let `repeat` = "превключвател"
    print(`repeat`)

    // var number = 1
    // while number <= 100 {
    //     print(number)
    //     number += 1
    //     if number < 10 {
    //         continue
    //     }
    //     break
    // }


    // number = 1
    // repeat {
    //     print(number)
    //     number += 1
    // } while number <= 100