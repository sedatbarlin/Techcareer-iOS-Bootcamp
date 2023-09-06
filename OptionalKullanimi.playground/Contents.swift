import UIKit

//Optional - Nullable - Null Safety
//nil, null, NaN
// ?, !

var str = "hello"
// tanımlama
var mesaj:String?
mesaj = "merhaba"

if mesaj != nil {
    print(mesaj!) //unwrapped
} else{
    print("mesaj nil")
}

//optional binding / if let yapısı da denebilir
if let temp = mesaj { // nil ise false, degilse true
    print(temp) //otomatic unwrapped
} else {
    print("mesaj nil")
}

if var temp = mesaj { // nil ise false, degilse true
    print(temp) //otomatic unwrapped
    temp = "nasilsin"
    print(temp)
} else {
    print("mesaj nil")
}
