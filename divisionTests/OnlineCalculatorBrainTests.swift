import XCTest

class OnlineCalculatorBrainTests: XCTestCase {
    
    let onlineCalc = OnlineCalculatorBrain()
    
    override func setUp() {
        
    }

    override func tearDown() {
        
    }
    
    func test_retriveURLFor10DividedBy2() {
        let url = URL(string: "http://api.mathjs.org/v4/?expr=10%2F2")
        let response = onlineCalc.retriveURLForDivided(dividend: 10 , divisor: 2)
        XCTAssert(url == response, "URL must be equals to http://api.mathjs.org/v4/?expr=10%2F2")
    }
    
    func test_retriveURLFor10DividedBy2ShouldFail() {
        let url = URL(string: "http://api.mathjs.org/v4/?expr=10%2F2")
        let response = onlineCalc.retriveURLForDivided(dividend: 20 , divisor: 2)
        XCTAssert(url != response, "URL must not equal http://api.mathjs.org/v4/?expr=10%2F2")
    }

    func test_calculateDivisionOnlineFor10DivideBy2ShouldBe5() {

        onlineCalc.calculateWithTwoNumbers(dividend: 20, divisor: 1) { (response, error) -> () in
            XCTAssert(response == 5, "Response should be 5")
        }
    }
    
//    var unknownClosure: (Float, Error) -> ()
    
    //    func completionHandler(response: Float, error: Error) -> () {
    //        XCTAssert(response == 5, "Response should be 5")
    //    }
    
    
    
    
    func test_calculateDivisionByZero() {
        
        let expecation = expectation(description: "Expected callback from API fail")
        
        onlineCalc.calculateWithTwoNumbers(dividend: 10, divisor: 0) { (response, error) -> () in
            let convertedError = error as NSError?
            if convertedError == nil {
                XCTFail()
            } else {
                XCTAssert(convertedError?.domain == "Division by Zero", "Response should be 'Division by Zero'")
                expecation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 3, handler: nil)
    }
    
    
}


