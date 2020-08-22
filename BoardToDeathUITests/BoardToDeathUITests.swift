//
//  BoardToDeathUITests.swift
//  BoardToDeathUITests
//
//  Created by Georgi Malkhasyan on 8/22/20.
//  Copyright © 2020 Caleb Stultz. All rights reserved.
//

import XCTest

class BoardToDeathUITests: XCTestCase {
    
    
    var app: XCUIApplication!
    

    override func setUpWithError() throws {
       app = XCUIApplication()
        continueAfterFailure = false

    }

    override func tearDownWithError() throws {
        app = nil
    }
    
    
    func testOnboarding_WhenSwiped_NextVCLoads() {
        app.launch()
        XCTAssertTrue(app.staticTexts["Welcome to BoardToDeath"].exists)
        
        app.swipeLeft()
        
        XCTAssertTrue(app.staticTexts["Custom Puppy Content"].exists)
    }

  
}
