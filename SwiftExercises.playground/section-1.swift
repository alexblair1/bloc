import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    return "My favorite cheese is " + cheese
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")

// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
numberArray.append(5)

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
numberDictionary[5] = "five"
/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE
for i in 1...10{
    print(i)
}
// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE
for i in 1..<10{
    print(i)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    var drinksArray:[String] = []
    for character in characters{
        drinksArray.append(character["favorite drink"]!)
    }
    return drinksArray
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

func arrayToString(inArray: Array<String>) ->String {
    var str: String = ""
    
    for var i = 0; i < inArray.count ; i++ {
        str += inArray[i]
        if (i < inArray.count - 1) {
            str += ";"
        }
    }
    return str
}
let theOutput = arrayToString(strings)
let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE
var cerealArrayAlpha = sorted(cerealArray, { (s1: String, s2: String) -> Bool in return s1 < s2 })
cerealArrayAlpha

// Non closure sort - so easy!
var sortedNames = sorted(cerealArray, <)
