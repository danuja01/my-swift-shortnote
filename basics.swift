import Cocoa

// var and let - let is for constants

var name = "Jayasuriya"
name = "Danuja"

let user = "DMax"

//Strings
let quote = "Damn swift supports \"EMOJIEEES\" and thats LIT! 🔥"

//multiple lines
let caption = """
    A day in
    the life of a
    IOS software enginner
    """

//count
//print(name.count)
//print(quote.hasPrefix("Damn"))
//print(quote.hasSuffix("lit!")) - false since strings are case sensative

//INTEGERS
let score = 1000
let hScore = score + 10
let halfScore = score / 2

var counter = 10 
counter += 5

let number = 120
//print(number.isMultiple(of: 3))

let id = Int.random(in: 1...100)
//print(id)

let num = 20.0 // DOUBLE

//print(type(of: num))

//Notte: int and dobles are different datatypes in Swift and we can't mix them up without casting

let isSaved = true //boolean

//STRING CONCATANATION
let age = 19

let msg =  "Hi my name is \(name) and I am \(age) years old"
//print(msg)

//ARRAYS
var colors = ["red", "green", "blue"]
let numbers = [1, 2, 4, 5]
var readings = [1.4, 3.4, 20]
//print(readings[2])

colors.append("gray")
colors.remove(at: 1)
//print(colors.count)
//print(colors)
//print(colors.contains("blue")) - check weather the value is contain in the array


//DICTIONARIES - kind of a key value pair that we store values on keys we specify
var emp: [String: Any] = [
    "name": "Dulmini",
    "job": "Doctor"
]

emp["name"] = "Danuja"
emp["age"] = 21

var dict:[Int:String] = [11:"Kusuma"]
//print(dict[11] ?? "no")

emp.updateValue(30, forKey: "age")

for e in emp {
//    print(e)
}

for (key, value) in emp {
//    print(key)
}

//print(emp["name", default: "Unknown"])

//SETS - Similer to arrays but can't store duplicat values and dont store values in a order
var nums = Set([1,2,3,4,5,5])
//print(nums) output:[5, 1, 2, 3, 4]

//print(nums.insert(11))
//print(nums.contains(4))
//print(nums)
//ENUMS - set of named values we can reuse

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .friday

//print(day)

//TYPE ANOTATION

let pie: Double = 3.14
let playerr: String = "Roy"
let luckyNum: Int = 10
var isEnabled: Bool = true

var albums: [Int] = [1, 5, 7, 8]
var userName: [String: String] = [
    "name": "John",
    "mail": "john90@mail.com"
]

//defining empty strings using type anotation
var arr2: [String] = [String]() 
//or
var arr3 = [String]()

enum Mode {
    case light, dark, system
}

var ui: Mode = .light

//print(ui)

//IF ELSE

var ifMsg: String;

if age < 13 {
    ifMsg = "You can't vote"
} else if age < 18 { 
    ifMsg = "You can vote soon!"
} else if age > 18 && age < 100 {
    ifMsg = "You can vote now!"
} else {
    ifMsg = "Invalid age"
}

//print(ifMsg)

//SWITCH STATEMENTS

enum Weather {
    case sunny, rainy, windy
}

let forcast: Weather = .rainy

//switch forcast {
//case .sunny:
//    print("A nice Day!") 
//case .rainy:
//    print("Take an umbrella!") 
//case .windy:
//    print("Be aware from dust!")
//default:
//   print("Should be okay.") 
//}

//ternary condition

let canVote: String = age > 18 ? "Yes" : "No"
//print(canVote)

//LOOPS
//for

//for i in 1...5 {
//    for j in 1...i {
//        print("*", terminator: "")
//    }
//    print("")
//}

let platforms:[String] = ["iOS", "macOS", "watchOS", "ipadOS"]

//for os in platforms {
//    print(os)
//}

var lyrics2 = "Haters gonna"

for _ in 1..<6 {
    lyrics2 += " hate"
}

//print(lyrics)

//while

var count = 0

while count < 10 {
//    print("Go!")
    count+=1
}

//var ii = 0
//repeat {
//    ii += 5 
//    print(ii)
//} while ii < 100

for i in stride(from: 5, to: 100, by: 5) {
//    print(i)
}


// also we can use "break" to exit the loop imideatly

//functions 
func printName(name: String) -> String {
    return "My name is \(name)"
}

//print(printName(name: "Danuja"))

//return multiple values
func getUser(fName: String, lName: String) -> (firstName: String, lastName: String) {
    (firstName: "My first name is \(fName)", lastName: "My last name is \(lName)")
}

let myName = getUser(fName: "Danuja", lName: "Jayasuirya")
let (firstName, _) = getUser(fName: "Danuja", lName: "Jayasuirya") //destructure
//print(firstName)
//print(myName.lastName)

//below used underscore to call the function without the need of label to more clarity
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

//print(isUppercase("DANUJA"))

//below here "for" is used externally and "number" is used for internally to make it more meaningful
func printTimetable(for number: Int) {
    for i in 1...5 {
        print("\(i) x \(number) is = \(i * number)")
    }
}

//printTimetable(for: 5)

//providing default values to function params

func greet(_ name: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(name)")
    }else {
        print("Hi, \(name)")
    }
}

//greet("Danuja", formal: true)
//greet("Danuja")

//INOUT FUNCTIONS

var sum = 0

func calc(num1: Int, num2: Int, for sum: inout Int) {
    sum = num1 + num2
}
calc(num1: 5, num2: 2, for: &sum)

//print(sum)



//ERROR HANDLING IN FUNCTIONS
enum PasswordErrors: Error {
    case short, obvious
}

func checkPassword(_ pass: String) throws -> String {
    if pass.count < 5 {
        throw PasswordErrors.short
    }else if pass == "12345" {
        throw PasswordErrors.obvious
    }else if pass.count < 10 {
        return "OK!"
    }else {
        return "GOOD!"
    }
}

//do {
//    let result = try checkPassword("12345")
//    print("Result: \(result)")
//} catch PasswordErrors.obvious {
//    print("It is already on my luggage")
//} catch {
//    print("There was an error!")
//}

//CLOSURS
// in seperates the params
let sayHello = { (name: String) -> String in
    "Hi! \(name)."
}

//print(sayHello("Danuja"))

let team: [String] = ["Gloria", "Suzanne", "Tiffany", "Tasha", "Danuja", "Devika"]

//practical use of closure
let onlyT = team.filter({ (name:String) -> Bool in 
    name.hasPrefix("T")
})
//print(onlyT)

let onlyLastA = team.filter({ (name: String) -> Bool in
    name.hasSuffix("a")
})

//print(onlyLastA)


//Trailing closures and shortend syntaxes

let onlyT2 = team.filter { name in 
    name.hasPrefix("T")
}
//print(onlyT2)

//can even simplify with swift defult vars like,
let onlyT3 = team.filter { $0.hasPrefix("T")}
//print(onlyT3)

//STRUCTS
//let us define our own custom datatypes

struct Album {
    let title: String
    let artist: String
    var published = true
    
    func printSummary() {
        print("\(title) by \(artist)")
    }
    
    mutating func removeSales() {
        published = false
    }
}

//member wise initializer
var newAlbum = Album(title: "red", artist: "Taylor Swift")


//print(newAlbum.title)
//newAlbum.printSummary()

//if you wanna change struct properties inside a method, u want to have mutating func as above
newAlbum.removeSales()
//print(newAlbum.published)

//COMPUTED PROPERTY
//change value dynamically, if we want to edit, we have to have getter and setter 

let namees = ["Danuja", "ken", "Jayasuriya"]




//print(shortLong(names: namees))

struct Employee1 {
    let name: String
    var vacationAllowed = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllowed - vacationTaken 
        }
        
        set {
            vacationAllowed = vacationTaken + newValue
        }
    }
}

var dnja = Employee1(name: "Danuja", vacationTaken: 2)

//print(dnja.vacationRemaining)

dnja.vacationRemaining = 6

//print(dnja.vacationRemaining)

//PROPERTY OBSERVERS
//peice of code that runs when a property changes

//didSet - call after a change is taking place
//willSet - before

struct Game{
    var score = 10 {
        didSet {
//            print("Score is now \(score)")
        }
        
        willSet {
//            print("Previous score is \(score)")
        }
    }
}

var football = Game()
football.score += 7

// Custom Initializers
struct Player {
    let name: String
    let score: Int
    
    init(name: String) {
        self.name = name
        score = Int.random(in: 1...99)
    }
}

//Why Use a Custom Initializer?
//Automatic Property Initialization: It automates the process of setting up welcomeMessage with a personalized message based on the user's name, ensuring consistency and reducing redundancy.
//
//Simplification: The user of the User struct doesn't need to worry about creating a welcome message manually, simplifying object creation.
//
//Validation and Logic: If you needed to validate email or calculate a value based on age, a custom initializer would be the place to do it. This ensures that all User instances adhere to certain rules or contain specific logic right from the moment they're created.
//
//Flexibility: Custom initializers allow for more flexible object creation, supporting multiple initialization pathways (e.g., loading from a database, creating a new user with minimal information, etc.).
//


//ACCESS CONTROL

//Private will controll outside access to inner vars
//private: Accessible only within the enclosing declaration and its extensions in the same file.
//fileprivate: Accessible within the same source file.
//internal: Accessible within the same module or target. This is the default access level.
//public: Accessible from any file that imports the module, but not subclassable or overridable.
//open: Accessible and subclassable/overridable from any file that imports the module (specific to classes).
//private(set): The property can be read from anywhere its access level permits, but it can 

struct BankAccount {
    private(set) var fund = 0
    
    mutating func deposit(amount: Int) {
        fund += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if amount <= fund {
            fund -= amount
            return true
        }
        return false
    }
}

var acc = BankAccount(fund: 1000)
acc.withdraw(amount: 100)
//print(acc.fund)


//Static properties and methods
struct AppData {
    static let version = "3.5 beta"
    static let settings = "settings.json"
}

//print(AppData.version)

//CLASSES IN SWIFT
class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours)h a day.")
    }
}

class Developer: Employee {
    let name: String
    
    init(hours: Int, name: String) {
        self.name = name
        super.init(hours: hours)
    }
    
    func work() {
        print("I'm coding for \(hours)h a day!")
    }
    
    override func printSummary() {
        print("I'm \(name) and I love coding for \(hours)h very much!")
    }
}

let emp1 = Employee(hours: 10)
let dev = Developer(hours: 10, name: "Danuja")
//emp1.printSummary()
//dev.printSummary()
//dev.work()

class Site {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("Site: \(id), created!")
    }
    
    deinit {
        print("Site: \(id), deleted!")
    }
}

//for i in 1...3 {
//    let site = Site(id: i)
//    print("Site: \(site.id), in Control!")
//}


//DIFFERENCES BETWEEN CLASSES AND STRUCT

//    * You can make one class build upon functionality in another class, gaining all its properties and methods as a starting point. If you want to selectively override some methods, you can do that too.
//    * Because of that first point, Swift won’t automatically generate a member wise initializer for classes. This means you either need to write your own initializer, or assign default values to all your properties.
//    * When you copy an instance of a class, both copies share the same data – if you change one copy, the other one also changes.
//    * When the final copy of a class instance is destroyed, Swift can optionally run a special function called a deinitializer.
//    * Even if you make a class constant, you can still change its properties as long as they are variables.


//PROTOCOLES
//Similer to interface, define methods, no code inside those

protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        return distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm travelling \(distance) distance a day!")
    }
    
    func openSunroof() {
        print("Openning the sun roof!")
    }
}

//Extentions - let us add new functionality to any kind of type including swift types
extension String {
     func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
    
     mutating func studentIdDigits(){
        self = String(self.suffix(8))
    }
}

var it = "IT21023378"
it.studentIdDigits()


print(it)


var qte = "     The truth is rarely pure and never simple.     "
//print(qte)
//print(qte.trim())

//let trimmedQty = qte.trim() 

let lyrics = """
    But I keep cruising
    can't stop, won't stop moving
    """

//print(lyrics.lines)

//Protocol extention

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guest = ["Mario", "Luigi", "Peach"]

if guest.isNotEmpty {
//    print("Guest count: \(guest.count)")
}

//Optionals
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"] // nil

//way to handle optional - 1
//if let marioOpposite = opposites["Mario"] {
//    print("Mario's opposite is \(marioOpposite)")
//}

//handling optional - 2
//guard let

func printSqure(of number: Int?) {
    guard let number = number else {
        print("Missing Input")
        return
    }
    
    print("\(number) x \(number) is \(number*number)")
}

//printSqure(of: nil)

let tvShows = ["Ted lasso", "Kobra kai", "Sheldon"]
let favourite = tvShows.randomElement() ?? "None"

let input2 = ""
let num2 = Int(input2) ?? 0

//print(num2)

//Optional chaining
let names = ["Arya", "Bran", "Rob", "Sansa"]
//if the optional have the value then execute uppercase
let chosen = names.randomElement()?.uppercased()
//print("Next in line: \(chosen ?? "No one")")

//optional try
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 12) {
    print("User: \(user)")
}

//SORTING AND FILTERINGS

struct Person {
    let name:String
    let salary:Double
    let othrs:Int = 2
    let otRate: Double = 2
}

//filter function
func high_salary(of person:Person) -> Bool {
    return person.salary > 100_000.0
}

//filter closure
let high_salary2 : (Person) -> Bool = { person in 
    return person.salary > 100_000.0
}

let hs = { (person: Person) -> Bool in 
    return person.salary > 100_000.0
}

let persons: [Person] = [
    Person(name: "Danuja", salary: 125_000.0),
    Person(name: "Disira", salary: 140_000.0),
    Person(name: "Oshada", salary: 400_000.0),
    Person(name: "Prashan", salary: 25_000.0)
]

//sortd property
let sorted_persons = persons.sorted{p1,p2 in return p1.salary < p2.salary}

let sorted_persons2 = persons.sorted{ $0.salary < $1.salary}

//print(sorted_persons)

//MAP Functions
//create a new collection based on our preference

let salaries = persons.map{$0.salary}
//print(salaries)

let new_salary = persons.map{$0.salary + $0.otRate * Double($0.othrs)}

let totSlaries = salaries.reduce(0, +)

let totNetSalary = persons.map{$0.salary + $0.otRate * Double($0.othrs)}.reduce(0, +)

let data: [Int?] = [1,2,nil,4,nil,5,6,nil,nil]

let data2 = data.compactMap{$0}
print(data2)

let arr4 = [1, 4, 5, 6, 7, 8, 4]

print(arr4.max() ?? "Array is empty")
print(arr4.min() ?? "Array is empty")

struct Len {
    var mm: Int = 0 {
        willSet {
            print("About to change")
        }
        
        didSet {
            if mm < 0 {
                mm = oldValue 
                print("Length cannot be negative")
            }
        }
    }
}



// QUETIONS

let rate = 60
var amount: Int

if (rate > 50) {
    amount = rate * 1000
}else if(rate > 25){
    amount = rate * 500
}else{
    amount = rate * 250
}

var total = 0 

//for i in 0..<5de {
//    for j in 5...10 {
//        total += 1
//    }
//}
//
//print(total)

class Student2 {
    var name: String
    var mobileno: String
    
    init(name: String, mobileno: String) {
        self.name = name
        self.mobileno = name
    }
    
    func display() {
        print("name")
    }
}

let danuja = Student2(name: "Danuja", mobileno: "0764510860")
print(danuja.name)

let dd = [1:"danuja", 2:"dolpin"]
