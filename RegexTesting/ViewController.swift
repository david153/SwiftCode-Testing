//
//  ViewController.swift
//  RegexTesting
//
//  Created by DavidSumner on 7/12/14.
//  Copyright (c) 2014 DavidSumner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var testPattern: UITextField
  @IBOutlet var searchString: UITextField
  @IBOutlet var compareResult: UITextField
  @IBOutlet var replaceString: UITextField
 
  
                            
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func checkForMatch() {
    
    compareResult.text = ""
    
    if let testResult = Regex(testPattern.text).test(searchString.text){
      if testResult {
        compareResult.text = "String Matches Search Pattern"
      } else {
        compareResult.text = "String Does Not Match Search pattern"
      }
    } else {
      compareResult.text = "AN ERROR OCCURED"
    }
  }
  
    @IBAction func replaceText() {
       println("Replace Tapped")
  }
}

