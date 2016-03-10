//: Playground - noun: a place where people can play

import Cocoa

var hours = 24

var PI = 3.14

var swiftIsFun = true

var me = ("Mars", 11, "11@boxue.io")

me.0
me.1
me.2
Int.min
Int.max

let fifteenIndecimal = 15
let fifteenInHex = 0xF

var oneThirdInFloat: Float = 1/3
var oneThirdInDouble: Double = 1/3

print(oneThirdInFloat)
print(oneThirdInDouble)

var three = 3
three.dynamicType

var zeroPointFoteen = 0.14
zeroPointFoteen.dynamicType

PI = 3 + 0.14
PI.dynamicType

let emptyString = ""
let emptyString1 = String()

let swift = "Swift is fun."
let swiftCopy = swift
print(swift)

let charA: Character = "A"
let charB = "B"

for char in swift.characters {
    print(char)
}

let swiftInChar: [Character] = ["S","w","i","f","t"]
let swift1 = String(swiftInChar)

let swift2 = swift + swift1


let PI1 = 3.14
let message = "PI * 100 equals to \(PI1 * 100)"