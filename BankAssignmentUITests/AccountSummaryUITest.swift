//
//  AccountSummaryUITest.swift
//  BankAssignment
//
//  Created by Xiaohao Li on 9/04/2016.
//  Copyright © 2016 RMIT. All rights reserved.
//

import XCTest

class AccountSummaryUITest: XCTestCase {
        
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
        
        //Test if there are 3 cells in the table view
        XCTAssertEqual(app.tables.cells.count,3)
        
        //Test if there are 3 buttons in the view
        XCTAssertEqual(app.buttons.count, 3)
    }
    
}