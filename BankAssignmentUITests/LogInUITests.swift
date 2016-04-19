//
//  BankAssignmentUITests.swift
//  BankAssignmentUITests
//
//  Created by Xiaohao Li on 4/04/2016.
//  Copyright © 2016 RMIT. All rights reserved.
//

import XCTest

class LogInUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        
        //Test if the bank label is displayed correctly
        var string = app.staticTexts.elementMatchingType(.Any, identifier: "bankLabel").label
        XCTAssertEqual(string, "ABC Bank");
        
        //Test if the user name label is displayed correctly
        string = app.staticTexts.elementMatchingType(.Any, identifier: "userNameLabel").label
            XCTAssertEqual(string, "User Name")
        
        //Test if the password label is displayed correctly
        string = app.staticTexts.elementMatchingType(.Any, identifier: "passwordLabel").label
            XCTAssertEqual(string, "Password")
        
        // Test that there are two buttons
        XCTAssertEqual(app.buttons.count,2)
        
        //Test that there are two text fields
        XCTAssertEqual(app.textFields.count,2)
    }
}