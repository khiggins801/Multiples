//
//  ViewController.swift
//  Multiples
//
//  Created by Kathy Higgins on 4/29/16.
//  Copyright © 2016 ColoApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

// var
    
    var multNum: Float = 0
    var multResult: Float = 0
    var pressCtr = 0
    
    var numEntered:Bool = false
    var maxValueHit = false
    
// constant
    
    let maxValue: Float = 150


//Outlets
    
    @IBOutlet weak var logoLbl: UIImageView!
    @IBOutlet weak var numberInText: UITextField!
    @IBOutlet weak var playBtn: UIButton!

    @IBOutlet weak var multResultOut: UILabel!
    @IBOutlet weak var addBtn: UIButton!

    @IBAction func playBtnPressed(sender: UIButton) {
    
        if  numberInText.text != nil && numberInText.text != "" {
            
            numEntered = true
 
        }
        
        if numEntered {
            
            multNum = (numberInText.text! as NSString).floatValue
        
            hideInputScreen()
        
            getResult()
        
        } else {
        
            numberInText.text = "Enter a number"
            numEntered = false

        }
    }
    
    @IBAction func addBtnPressed(sender: UIButton) {
    
        if !maxValueHit {
            
    
            getResult()
        
        }
    
    }
    
    func hideInputScreen() {
        
        logoLbl.hidden = true
        numberInText.hidden = true
        playBtn.hidden = true
        
        multResultOut.hidden = false
        addBtn.hidden = false
    }
    
    
    func reinitializeFirstScreen () {
        
        logoLbl.hidden = false
        numberInText.hidden = false
        playBtn.hidden = false
        
        multResultOut.hidden = true
        addBtn.hidden = true
        
    }
    
    func getResult() {
    
    
        pressCtr += 1
        multResult = multNum * Float(pressCtr)
        
        if (multResult >= maxValue) {
            
            maxValueHit = true
        
        } else {
            
            maxValueHit = false
        }
        
        multResultOut.text = "\(multNum)" + " * " + "\(pressCtr)" + " = " + "\(multResult)"
       
    
    }

}

