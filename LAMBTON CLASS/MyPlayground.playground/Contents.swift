import Cocoa

var greeting = "Hello, playground"
var array = [2, 3,4]
var a = array
let c = a.removeFirst()
let d = a.removeLast()
a.insert(d, at: a.startIndex)
a.append(c)
print(a)
