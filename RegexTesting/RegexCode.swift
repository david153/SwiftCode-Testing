//
//  RegexCode.swift
//  RegexTesting
//
//  Created by DavidSumner on 7/12/14.
//  Copyright (c) 2014 DavidSumner. All rights reserved.
//

import Foundation
import UIKit

operator infix =~ {}


//Rather than return an optional Boolean perhaps we should
//return false whenever there is an error!
func =~ (input: String, pattern: String) -> Bool? {
  if let testResult = Regex(pattern).test(input){
  return testResult
  }
  return nil
}

//From the Internet -- testing
class Regex {
  let internalExpression: NSRegularExpression
  let pattern: String
   var error: NSError?
  
  init(_ pattern: String){
    self.pattern = pattern
   
    self.internalExpression = NSRegularExpression(pattern: pattern, options: nil, error: &error)
//    if(error){
//      println("An Error Occured")
//    }
  }
  
  func test(input: String) -> Bool? {
    if error{
      return nil
    }
    let matches = self.internalExpression.matchesInString(input, options: nil, range:NSMakeRange(0, countElements(input)))
    
    
    return matches.count > 0
  }
  
  
  //Wow!!! It looks like this idea is not necessary!
  func escapePattern() {
    var error: NSError?
    let slashSearchPattern: NSRegularExpression = NSRegularExpression(pattern: "\\^\\", options: .CaseInsensitive, error: &error)
    for k in 1...10 {
      //replace the 2k-1 st slash in pattern
      var addedSlash = true
      while addedSlash {
        //replace \NOT\ by \\
        //if it happened then addedSlash = false
        //esle addedSlash = true
      }
    }
    
  }
}