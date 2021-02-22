//
//  CalculatorBrain.swift
//  division
//
//  Created by John Page on 29/01/2021.
//  Copyright © 2021 John Page. All rights reserved.
//

import UIKit

class CalculatorBrain: NSObject {
    func divideTwoNumbers(dividend: Int , divisor: Int, completion: (_ result: Float?, _ error: NSError?)-> Void) {
        
        Thread.sleep(forTimeInterval: 1)
        
        if divisor == 0 {
            let error = NSError(domain: "Error dividing by Zero", code: 1, userInfo: nil)
            return completion(nil, error)
        }
        return completion(Float(dividend/divisor),nil)
    }
}
