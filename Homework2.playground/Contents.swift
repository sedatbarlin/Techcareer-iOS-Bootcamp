import UIKit


//Question 1 - Fahrenheit
class Fahrenheit {
    var celcius: Int?
    func convert(celcius: Double) -> Double {
        let fahrenheit = celcius * 1.8 + 32
        print("Q1 / \(celcius) (celcius) = \(fahrenheit) (fahrenheit)")
        return fahrenheit
    }
}
var fahrenheit = Fahrenheit()
fahrenheit.convert(celcius: 120)

print("------------------------------------------------------------")

//Question 2 - Rectangle
class Rectangle {
    var a:Int?
    var b:Int?
    func environment(a:Int, b:Int) {
        let environment = 2 * (a + b)
        print("Q2 / perimeter of rectangle = \(environment)")
    }
}
var env1 = Rectangle()
env1.environment(a: 20, b: 30)

print("------------------------------------------------------------")

//Question 3 - Factorial
func factorial(num:Int) -> Int {
    var x = 1
    for i in 1...num {
        x *= i
    }
    return x
}
print("Q3 / Factorial = \(factorial(num: 5))")

print("------------------------------------------------------------")

//Question 4 - How Many "a"
func enter(sentence: String) -> Int {
    var x = 0
    for i in sentence {
        if i == "a" {
            x += 1
        }
    }
    print("Q4 / There are \(x) letters (a) in the sentence.")
    return x
}
enter(sentence: "Our bootcamp process is very fun and educational.")

print("------------------------------------------------------------")

//Question 5 - Sum of Interior Angles
class NumberOfEdges {
    var ne: Int?
    
    func sumOfInteriorAngles(ne: Int) -> Int {
        if ne > 2 {
            let process = ((ne - 2) * 180 )
            print("Q5 / Sum of Interior Angles : \(process) degree")
            return process
        }else{
            print("Enter min 3")
            return ne
        }
    }
}
var result = NumberOfEdges()
result.sumOfInteriorAngles(ne: 10)
result.sumOfInteriorAngles(ne: 2)
result.sumOfInteriorAngles(ne: 8)
result.sumOfInteriorAngles(ne: 1)
result.sumOfInteriorAngles(ne: 7)

print("------------------------------------------------------------")

//Question 6 - Salary
class SalaryCalculator {
    var day:Int?
    func salaryCalculator(day: Int) -> Int {
        let process = day * 80
        if process > 1600 {
            let shift = (day - 20) * 160 + 1600 // 160 saat üzeri mesai yani 20 gün ve üzeri olunca mesai sayılacak (günde 8 saat)
            
            print("Q6 / Mesai ücretleriyle beraber \(shift)₺")
            return shift
        }else {
            print("Q6 / Mesai yok. Kazanılan ücret \(process)₺")
            return process
        }
    }
}
var salary = SalaryCalculator()
salary.salaryCalculator(day: 10)
salary.salaryCalculator(day: 21)

print("------------------------------------------------------------")

//Question 7 - Quota
class Quota {
    var quota: Int?
    func calculate(quota: Int) -> Int {
        let fee = quota * 2 //50gb = 100tl
        if fee > 100 {
            let fee = (quota - 50 ) * 4 + 100 //Kota aşımı her GB için 4₺
            print("Q7 / Kota kullanım tutarınız aşım ücreti ile beraber \(fee)₺")
            return fee
        }
        else{
            print("Q7 / Kota kullanım tutarınız \(fee)₺")
            return fee
        }
    }
}
var quota = Quota()
quota.calculate(quota: 50)
quota.calculate(quota: 100)


//Sedat Barlin
