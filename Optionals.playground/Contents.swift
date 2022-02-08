var a = 1

// Implicitly Unwrapped Optional
// Can contain nil
// Xcode doesn't warn us
// Don't need to unwrap
var b:Int! = nil


// Optional
// Can contain nil
// Xcode warns us
// Need to unwrap to get value
var c:Int? = 5

// Using an if statement to check nil
if c != nil {
    var x = 1 + c!
}

// Optional binding
if let y = c {
    var x = 1 + y
}

// Optional chaning
struct Person {
    
    var name = "Popo"
    
    func talk() {
        print("Hello!!")
    }
}

var d:Person? = nil
d?.talk()
d?.name


