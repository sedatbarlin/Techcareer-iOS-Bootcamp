import UIKit

//with var
var city = "Antalya"
var country = "Turkey"
var telephone = 5436898954
var postCode = 07
var email = "barlinsedat@gmail.com"
var job = "iOS Developer"
var amountOfStock = 50
var customerName = "Sedat"
var balance = 100
var birthday = "12/10/1999"
var salary = 30000
var maritalStatus = "Single"
var productReview = "Good"
print(city)
print(country)
print(telephone)
print(postCode)
print(email)
print(job)
print(amountOfStock)
print(customerName)
print(balance)
print(birthday)
print(salary)
print(maritalStatus)
print(productReview)

//with let
let paymentDate = "01/01/2024"
let payment = true
let orderQuantity = 49
let carModel = "Porsche"
let bookName = "Tutunamayanlar"
let releaseDate = "05/08/2023"
let discountAmount = "%50"
let numberOfRooms = 5
let latitude = 48
let longitude = 50
let productName = "iOS Bootcamp"
let mealPrice = 250
print(paymentDate)
print(payment)
print(orderQuantity)
print(carModel)
print(bookName)
print(releaseDate)
print(discountAmount)
print(numberOfRooms)
print(latitude)
print(longitude)
print(productName)
print(mealPrice)

//with type name
var brand:String = "MacBook"
var musicName:String = "Your Power"
var videoDuration:Int = 150 //second
var productRating:Int = 5
var pictureName = "Loneliness"
var fileFormat:String = ".jpg"
var color = UIColor.red //used from UIKit Library
var codeOfColor:String = "#4567"
var phoneModel:String = "iPhone"
var screenSize:Int = 13
var weight:Double = 80.5
var nationalDay:String = "Saturday"
var holiday:String = "Sunday"
var reservationDate:String = "04/09/2023"
var streetName:String = "Rose"
var busLine:String = "Antalya Lara"
var remainingMinutes:Int = 23
var trackingCode:Int = 45742
var couponDuration:Int = 8
print(brand)
print(musicName)
print(videoDuration)
print(productRating)
print(pictureName)
print(fileFormat)
print(color)
print(codeOfColor)
print(phoneModel)
print(screenSize)
print(weight)
print(nationalDay)
print(holiday)
print(reservationDate)
print(streetName)
print(busLine)
print(remainingMinutes)
print(trackingCode)
print(couponDuration)

//with type casting
var couponCode1:Int = 10
var couponCode2:Double = 15.5
var couponCode3:Int = 15233
var couponResult1 = Double(couponCode1) //Integer to Double
var couponResult2 = Int(couponCode2)    //Double to Integer
var couponResult3 = String(couponCode3) //Integer to String
print(couponResult1)
print(couponResult2)
print(couponResult3)

//String to Integer Type Casting
var billingAdress = "Guzeloba"
if let myAdress = Int(billingAdress) { //Optional Binding - String to Integer
    print(myAdress)
}else {
    print("Type Casting Error!")
}
