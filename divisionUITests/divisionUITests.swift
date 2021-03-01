//
//  divisionUITests.swift
//  divisionUITests
//
//  Created by John Page on 29/01/2021.
//  Copyright © 2021 John Page. All rights reserved.
//

import XCTest

class divisionUITests: XCTestCase {

    var app = XCUIApplication()
    var device = XCUIDevice.shared
//    var element = XCUIElement()
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
    }

    func testExample() {
        // UI tests must launch the application that they test.
//        let app = XCUIApplication()
//        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func test_MainScreenLaunch() {
        let labelText = app.staticTexts["Enter two numbers:"]
        XCTAssert(labelText.exists, "Should be in the main screen")
        
    }
    
    func test_Calculate10DivideBy2LabelResult() {
        let div1 = app.textFields.element(boundBy: 0)
        let div2 = app.textFields.element(boundBy: 1)
        div1.tap()
        div1.typeText("10")
        div2.tap()
        div2.typeText("2")
        app.buttons["Calculate"].tap()
        XCTAssertTrue(app.staticTexts["5.0"].exists, "Result should be displaying '5.0'")
    }
    
    func test_Claculate20DividedBy10LabelResult() {
        
        let app = XCUIApplication()
        app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .textField).element(boundBy: 0).tap()
        
        let moreKey = app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"numbers\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        moreKey.tap()
        
        let key = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key.tap()

        let key2 = app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key2.tap()

        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .textField).element(boundBy: 1).tap()
        moreKey.tap()
        
        let key3 = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key3.tap()
        key2.tap()

        app/*@START_MENU_TOKEN@*/.staticTexts["Calculate"]/*[[".buttons[\"Calculate\"].staticTexts[\"Calculate\"]",".staticTexts[\"Calculate\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        XCTAssertTrue(app.staticTexts["2.0"].exists, "Result should be displaying '2.0'")
    }

}
