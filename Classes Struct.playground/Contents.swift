
//class Person {
//
//    var name = ""
//
//    func talk() {
//        print("Make conversation")
//    }
//}
//
//var a = Person()
//
////Subclassing
//class Comedian: Person {
//    func sayHi() {
//        print("Hi !")
//    }
//
//    override func talk() {
//        print("Make people laugh!")
//        super.talk()
//    }
//}
//
//var c = Comedian()
//c.talk()
//c.sayHi()

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

for _ in 1...10 {
    
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
