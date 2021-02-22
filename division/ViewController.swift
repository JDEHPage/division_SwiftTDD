//
//  ViewController.swift
//  division
//
//  Created by John Page on 29/01/2021.
//  Copyright © 2021 John Page. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let calculatorBrain = CalculatorBrain()
    let calculOnline = OnlineCalculatorBrain()
    
    @IBOutlet weak var div1Textfield: UITextField!
    @IBOutlet weak var div2Textfield: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func calculateButton(_ sender: Any) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calculOnline.calculateWithTwoNumbers(dividend: 10, divisor: 2) { (result: Float?, error: Error?) in
            
        }
    }

}

