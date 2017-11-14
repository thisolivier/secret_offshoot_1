//
//  Arkera Test
//
//  Created by Kamal Popat on 11/12/2016.
//  Copyright © 2017 Arkera. All rights reserved.
//

import UIKit
import Foundation

/* -- Before you start: -- */
/* Some of the questions are deliberately ambiguous. Carefully think about the range and types of input values in your solutions. You're encouraged to add notes to explain your thought process where you choose between multiple possible solutions
 */





//-----------------------------------------------------------------------------

/* 1.a. Given an integer, reverse the digits of the integer

 Example:-

 Input: 123
 Output: 321

*/

func reverseInt (_ intInput:Int64)->Int?{
    // Quick fail for negatives
    if (intInput != abs(intInput)){
        print("- Warning - reverseInt -")
        print("- Negative inputs (\(intInput)) currently produce nil outputs -")
        return nil
    }
    
    // Convert int to array of chars for processing
    // Pow and Mod rely on decimals which cannot convert to Int's - sadness
    let arrInput = Array(String(intInput))
    let lengthOfInput = arrInput.count - 1
    var stringOutput = ""
    
    // Loops through chars building string in reverse
    for index in 0 ... lengthOfInput {
        if (index == 0 && arrInput[lengthOfInput - index] == "0"){
            print ("- Warning - reverseInt -")
            print ("- Trailing zeros from \(intInput) will be stripped when reversing -")
        }
        stringOutput += String(arrInput[lengthOfInput - index])
    }
    
    // Returns actual int instead of optional with warning flag
//    if let intOutput = Int(stringOutput) {
//        return intOutput
//    }
//    print("Warning - reverseInt - error in string conversion to int")
//    return -1
    
    return Int(stringOutput)
}

//let testArr1a:Array<Int64> = [200,2000000,10104744,454777,-70,33337]
//for number in testArr{
//    let reversed = reverseInt(number)
//    print("\(number) reversed is \(String(describing: reversed))")
//    print("")
//}



//-----------------------------------------------------------------------------

/* 1.b. Given an integer, determine whether it is a palindrome

 Example:-

 Input: 123
 Output: false

 Input: 121
 Output: true

 */

func checkIsPalindromeFromInt (_ intInput:Int64)->Bool{
    // Convert int to array of chars for processing
    // Assumes negatives should be treated the same as positives
    let arrInput = Array(String(abs(intInput)))
    let lengthOfInput = arrInput.count - 1
    
    // Loops through chars checking front and back
    for index in 0 ... lengthOfInput/2 {
        if (arrInput[index] != arrInput[lengthOfInput - index]){
            return false
        }
    }
    
    return true
}

//let testArr1b:Array<Int64> = [200,2000000,10104744,4547777454,-707,333373333]
//for number in testArr1b{
//    print("Is \(number) a palindrome? \(checkIsPalindromeFromInt(number))")
//}



//-----------------------------------------------------------------------------

/* 2.a. Given two strings, determine whether they are isomorphic

 Example:-

 Input: "aabb", "abab"
 Output: false

 Input: "aabb", "yyzz"
 Output: true

 */

func areIsomorphicStrings(string1:String, string2:String) -> Bool{
    // Assumes capitalization should be honored
    // Converting to arrays for walking
    let arr1 = Array(string1)
    let arr2 = Array(string2)
    let lengthOfStrings = arr1.count
    // Could use a custom data structure here to improve runtime - many to many?
    var dictChecker1 = [Character:Character]()
    var dictChecker2 = [Character:Character]()
    // Quick fail for length mismatch
    if ( lengthOfStrings != arr2.count){
        print("- Info - areIsomorphicStrings - Strings of different lengths are never isomorphic")
        return false
    }
    
    // Walks through arrays using an index
    for index in 0..<lengthOfStrings{
        let char1 = arr1[index]
        let char2 = arr2[index]
        if dictChecker1[char1] == nil && dictChecker2[char2] == nil{
            // If we haven't seen the char, store the pairing, both ways
            dictChecker1[char1] = char2
            dictChecker2[char2] = char1
        } else if dictChecker1[char1] == nil || dictChecker2[char2] == nil {
            // If only one pairing exists, it's not isomorphic
            return false
        } else if dictChecker1[char1] != char2 {
            // If the pairing fails, it's not isomorphic
            // Only need one check since we know all pairings are symettrical
            return false
        }
    }
    
    // Assuming we got through all that, return true
    return true
}

//let testArr2a = [
//    ["rrbb","aazz"],
//    ["rrbb","aazzz"],
//    ["wubbadubba","sittomizzo"],
//    ["wubbadubba","sittomitto"]
//]
//for pair in testArr2a{
//    print("Iso check - \(pair) - \(areIsomorphicStrings(string1: pair[0], string2: pair[1]))")
//    print("")
//}



//-----------------------------------------------------------------------------

/* 2.b. Given a string, determine whether it is a palindrome

 Example:-

 Input: "abcd"
 Output: false

 Input: "level"
 Output: true

 */

func checkIsPalindromeFromString (_ intInput:String)->Bool{
    // Convert array of chars for processing
    // Assumes spaces and punctuation should be honoured
    let arrInput = Array(intInput)
    let lengthOfInput = arrInput.count - 1
    // Quick returns
    if lengthOfInput == 0 {
        return true
    } else if lengthOfInput < 0 {
        print("- Warning - checkIsPalindromeFromString - Empty strings will always fail")
        return false
    }
    
    // Loops through checking front and back
    for index in 0 ... lengthOfInput/2 {
        if (arrInput[index] != arrInput[lengthOfInput - index]){
            return false
        }
    }
    // If we got through the loop, it's a palindrome
    return true
}

//let testArr2b = ["o", "", "boom", "moom", "mo1om", "m0om", "isatankknatasi"]
//for str in testArr2b {
//    print ("Is \(str) a string palendrome? \(checkIsPalindromeFromString(str))")
//}


//-----------------------------------------------------------------------------

/* 3. Given a string and a 2D array (grid) of characters, return a bool to determine whether the string can be found in the array.

 Example:-

 Grid:

[
 ['H','N','I','E','E'],
 ['E','Q','C','A','E'],
 ['L','O','D','R','E'],
 ['L','T','G','H','I'],
 ['O','P','Z','T','E'],
]

 String: "hello"
 Output: true

 String: "earth"
 Output: false

 */

/* Strategy planning */
/*
 
 Going to flat out ignore diagonals for now
 Things to make sure are guarded against
 - rows/cols not starting with a string (substrings)
 - reversed strings
 
 Setup needed
 - How to structure input/array
 - How to refrence the input/array
 */

class WordSearchFromArrArrString{
    let myMap:Array<Array<String>>?
    
    init(_ mapInput:Array<Array<String>>) {
        var badMap:Bool = false
        let testCount = mapInput[0].count
        for row in mapInput {
            if row.count != testCount{
                badMap = true
            }
            for str in row {
                if str.count != 1 {
                    badMap = true
                }
            }
        }
        myMap = badMap ? nil : mapInput
        testMapAndPrint()
    }
    
    func testMapAndPrint(_ shouldPrint:Bool = true) -> Bool {
        if let map = myMap {
            if shouldPrint {
                for row in map{
                    print(row)
                }
            }
            return true
        }
        print ("Map failed tests")
        return false
    }
}

let wordSearch = WordSearchFromArrArrString([
    ["H","N","I","E","E"],
    ["E","Q","C","A","E"],
    ["L","O","D","R","E"],
    ["L","T","G","H","I"],
    ["O","P","Z","T","E"],
    ])
