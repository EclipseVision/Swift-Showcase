//
//  ViewController.swift
//  Prime Number
//
//  Created by Dustin Harle on 5/3/16.
//  Copyright © 2016 Dustin Harle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet var outPut: UILabel!
    
    @IBOutlet var inPut: UITextField!
    
    
    @IBAction func button(sender: AnyObject) {
        
        let intInPut = Int(inPut.text!)!
        var prime:Bool = true //start with the number as prime
        let number:Int = (intInPut - 1) //remove one from the user number so that it skipps its self in the loop
        
        if intInPut <= 1 { //test to see if the number is 1
            prime = false
        } else if intInPut == 2 { //test to see if the number is 2
            prime = true
        } else { //if not 1 or 2 then test to see if the number is prime
            
            for i in 2...number { //loop through every number between 2 and one less then the input number
                
                if (intInPut % i) == 0 { //test to see if the input number is deviable by the count number
                    
                    prime = false //if the number can be can be devided then it is not prime
                }
            }
        }
        
        if prime == true { //if the prime is still true then pass
            
            outPut.text = "Prime"
        } else {
            
            outPut.text = "Not Prime"
        }

        
    }

}

