// Class
class Person2 {

    var name = ""

    func talk() {
        print("Make conversation")
    }
}

//Subclassing
class Comedian: Person2 {
    func sayHi() {
        print("Hi!")
    }

    override func talk() {
        print("Make people laugh!")
        super.talk()
    }
}

// Struct
struct TalkShowHost {
    var name = ""
}

// Test function
func changeName(p:Comedian) {
    p.name = "Kenny"
}

// Structures are "Value types"
// Classes are "Referance types"

var a = Comedian()
a.name = "PoKai"

var b = a
b.name = "Elaine"

changeName(p: a)

print(a.name)
print(b.name)

// Challenge

let names = [ "Sally", "Jack", "Sam", "Popo", "Joe"]

class Person {
    var name = ""
    
    func introduceMyself() {
        print("Hi! My name is \(name).")
    }
    
}

class Chef: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm a chef.")
    }
}

class Poet: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm a poet.")
    }
}

class Astronaut: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm an astronaut.")
    }
}

for _ in 1...3 {
    
    let randomName = names[Int.random(in: 0...names.count-1)]
    let randomNumber = Int.random(in: 1...3)
    var person = Person()
    
    if randomNumber == 1 {
        person = Chef()
    }
    else if randomNumber == 2 {
        person = Poet()
    }
    else if randomNumber == 3 {
        person = Astronaut()
    }
    person.name = randomName
    person.introduceMyself()
}
