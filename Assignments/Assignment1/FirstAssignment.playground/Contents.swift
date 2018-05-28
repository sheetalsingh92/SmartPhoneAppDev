//: Playground - noun: a place where people can play

import UIKit

//Swift variables

var num1 = 15
var num2 = 5
var num_addition = num1+num2
var num_multiplication = num1*num2
var num_subtraction = num1 - num2
var num_divison = num1/num2

var a:String = "Hello"
var b:String = "World"
var str_concat = "\(a) \(b)"



//Swift functions
//Addition

func add(x: Double, y: Double)->Double{
    
    return x+y
}

add(5.5,y: 5.5)

//Subtraction

func subtract (x: Int, y: Int)->Int{
    return x-y
}
subtract(10,y: 5)


//Multiplication

func multiply(x: Float, y: Float)->Float{
    return x * y
}

multiply(5.0,y:5)




//Swift Arrays

var arr:[String] = []
var arr1:[Double] = [1.0,1.1,1.2,1.3]
var arr2 = [1,2,3,4,5]

//Append 
arr.append("hi")
arr+=["hello","how are you?"]

arr1+=[1.4,1.5,1.6]

arr2+=[6,7,8]


//removeAt
arr.removeAtIndex(0)
arr

arr1.removeAtIndex(1)
arr1

//Remove random element in arr2
let randomIndex = Int(arc4random_uniform(UInt32(arr2.count)))
arr2.removeAtIndex(randomIndex)
print(arr2)

//RemoveAll
arr1.removeAll()
arr1



//Swift Loops

var oddNumbers:[Int]=[]
var num=0
for i in 0...100 where i % 2 == 1{
    oddNumbers.append(i)
    
}
print(oddNumbers)


var sums:[Int]=[]

for z in oddNumbers{
    var c = z + 5
    sums.append(c)
    
}
print(sums)

var x = 0
repeat{
    print("the sum is \(sums[x])");
    x += 1;
}while(x < sums.count)




//Swift Conditions
func check(milkAge: Int, eggAge: Int)
{
    if(milkAge>21)
    {
        print("you should throw away milk")
    }
    
    if(eggAge>10)
    {
        print("you should throw away eggs")
    }
    
    if(milkAge<=21 && eggAge<=10)
    {
        print("you can still use your milk and eggs")
    }
}

check(10,eggAge: 10)
//check(21, eggAge: 11)
//check(25, eggAge: 9)



func check_values(first: Int, second: Int, third: Int){

    
    if (first == second) || (first == third) || (second == third) {
        print("two values are atleast identical")
    } else {
        print("the values are different")
}
}

check_values(1, second: 2, third: 3)
//check_values(1, second: 1, third: 2)



//Swift Dictionaries
var names : [[String:String]]=[

    [
        "firstname" : "Sheetal",
        "lastname"  : "Singh"
        
    ],
    
    [
        "firstname" : "abc",
        "lastname"  : "xyz"
    
    ]


]
var firstnames: [String] = []

for name in names {
    if let firstname = name["firstname"] {
        firstnames.append(firstname)
        print(firstnames)
    }
}


var fullnames : [String]=[]
for name in names {
    if let firstname = name["firstname"] {
        if let lastname = name["lastname"]{
        let fullname = "\(firstname) , \(lastname)"
        fullnames.append(fullname)
         print(fullnames)
    }
  }
}



//Swift Tuple - Enum
enum CoinType : Int {
    
    case penny = 1
    case dime = 10
    case quarter = 25

}

var money:[(amount:Int,CoinType)] = [(5, .quarter),
                             (6, .dime),
                             (2, .penny)]


var totalValue = 0

for (amount, coinType) in money {
    totalValue += amount * coinType.rawValue
}

print(totalValue)
