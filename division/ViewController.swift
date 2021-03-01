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
        if div1Textfield.text != nil && div2Textfield.text != nil {
            if let div1 = Int(div1Textfield.text!), let div2 = Int(div2Textfield.text!){
                calculatorBrain.divideTwoNumbers(dividend: div1, divisor: div2) { (result, error) in
                    if error == nil, let result = result {
                        let resultAsString = NSString(format: "%.1f", result)
                        resultLabel.text = String(resultAsString)
                    }
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

