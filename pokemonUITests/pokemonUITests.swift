
//
//  pokemonUITests.swift
//  pokemonUITests
//
//  Created by Ami Garcia on 3/1/16.
//  Copyright © 2016 Ami Garcia. All rights reserved.
//

import XCTest

class pokemonUITests: XCTestCase {
        
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
        let app = XCUIApplication()
        app.buttons["Login"].tap()
        
        let tablesQuery2 = app.tables
        let tablesQuery = tablesQuery2
        tablesQuery.staticTexts["Pikachu"].tap()
        // Failed to find matching element please file bug (bugreport.apple.com) and provide output from Console.app
        tablesQuery2.cells.containingType(.StaticText, identifier:"Iron Tail").staticTexts["15"].swipeDown()
        // Failed to find matching element please file bug (bugreport.apple.com) and provide output from Console.app
        let doneButton = app.buttons["Done"]
        doneButton.tap()
        tablesQuery.staticTexts["Fire"].tap()
        tablesQuery2.cells.containingType(.StaticText, identifier:"Slash").staticTexts["TYPE:"].swipeRight()
        doneButton.tap()
        tablesQuery.staticTexts["Bulbasaur"].tap()
        tablesQuery2.cells.containingType(.StaticText, identifier:"Take Down").childrenMatchingType(.ProgressIndicator).matchingIdentifier("Progress").elementBoundByIndex(2).swipeRight()
        doneButton.tap()
        tablesQuery.staticTexts["Water"].tap()
        doneButton.tap()
        tablesQuery.staticTexts["Normal"].tap()
        doneButton.tap()
        tablesQuery.staticTexts["Primeape"].tap()
        
    }
    
}
