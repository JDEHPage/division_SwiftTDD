//
//  OnlineCalculatorBrain.swift
//  division
//
//  Created by John Page on 10/02/2021.
//  Copyright © 2021 John Page. All rights reserved.
//

import UIKit

class OnlineCalculatorBrain: NSObject {
    
    func retriveURLForDivided(dividend: Int , divisor: Int) -> URL {
        return URL(string: "http://api.mathjs.org/v4/?expr=\(dividend)%2F\(divisor)")!
    }
    
    
    
    func calculateWithTwoNumbers(dividend: Int , divisor: Int, completionHandler: @escaping (Float?, Error?) ->()) {
        let url = retriveURLForDivided(dividend: dividend, divisor: divisor)
        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) -> Void in
            if error == nil{
                if let requestData = data {
                    let sValue = NSString(data: requestData, encoding: String.Encoding.utf8.rawValue)
                    completionHandler(sValue?.floatValue, nil)
                }
                let localError = NSError(domain: "No data was found", code: 1, userInfo: nil) as Error
                completionHandler(nil, localError)
            } else {
                print(error?.localizedDescription as Any)
                completionHandler(nil, error)
            }
        }
        task.resume()
    }
    
    
}
