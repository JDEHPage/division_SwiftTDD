//
//  divisionTests.swift
//  divisionTests
//
//  Created by John Page on 29/01/2021.
//  Copyright © 2021 John Page. All rights reserved.
//

import XCTest

class divisionTests: XCTestCase {
    
    let calculatorBrain = CalculatorBrain()

//    override func setUp() {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
    
    func test_10DivideBy5MustBe2() {
        calculatorBrain.divideTwoNumbers(dividend: 10, divisor: 5) { (result, error) -> Void in
            XCTAssert(result == 2, "Result must be 2")
        }
    }
    
    func test_10DividedBy0MustBeNil() {
        calculatorBrain.divideTwoNumbers(dividend: 10, divisor: 0) { (result, error) -> Void in
            XCTAssertNil(result, "Result must be nil")
            XCTAssert(error!.domain == "Error dividing by Zero", "Error message should be 'Error dividing by Zero'")
        }
    }
    
    func test_TestDivisionTime() {
        measure {
            self.calculatorBrain.divideTwoNumbers(dividend: 10, divisor: 2) { (result, error) -> Void in
                
            }
        }
    }
    
    
}
