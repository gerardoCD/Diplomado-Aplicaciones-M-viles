//
//  TestPruebaUITests.swift
//  TestPruebaUITests
//
//  Created by Gerardo Castillo on 11/9/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import XCTest

class TestPruebaUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testAppLogin(){
        let app = XCUIApplication()
        let nameTextField = app.textFields["txtUser1"]
        nameTextField.tap()
        nameTextField.typeText("iosGer")
        
        let passwordTextField = app.secureTextFields["txtPas"]
        passwordTextField.tap()
        passwordTextField.typeText("1q2w3e4r")
        
        let logginButton = app.buttons["btnLogin1"]
        logginButton.tap()
        XCTAssertTrue(app.isDisplayMusic)
        
        
    }
    
    
   
}

extension XCUIApplication{
    var isDisplayMusic: Bool{
        return otherElements["MusicView"].exists
    }
}
