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
    
    // Loops through chars building string in reverse
    for index in 0 ... lengthOfInput/2 {
        if (arrInput[index] != arrInput[lengthOfInput - index]){
            return false
        }
    }
    
    return true
}

let testArr1b:Array<Int64> = [200,2000000,10104744,4547777454,-707,333373333]
for number in testArr1b{
    print("Is \(number) a palindrome? \(checkIsPalindromeFromInt(number))")
}



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
    
    // Quick fail for length mismatch
    if (arr1.count != arr2.count){
        print("- Info - areIsomorphicStrings - Strings of different lengths are never isomorphic")
        return false
    }
    
    
    
    return true
}





//-----------------------------------------------------------------------------

/* 2.b. Given a string, determine whether it is a palindrome

 Example:-

 Input: "abcd"
 Output: false

 Input: "level"
 Output: true

 */





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
