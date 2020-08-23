//
//  BoardToDeathUITests.swift
//  BoardToDeathUITests
//
//  Created by Georgi Malkhasyan on 8/22/20.
//  Copyright © 2020 Caleb Stultz. All rights reserved.
//

import XCTest
@testable import BoardToDeath
class BoardToDeathUITests: XCTestCase {
    
    
    var app: XCUIApplication!
    
    
    override func setUpWithError() throws {
        app = XCUIApplication()
        continueAfterFailure = false
        app.launchArguments.append("--uitesting")
        
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
    
    
    
    
    
    func testOnboarding_WhenFinished_OnboardVCDismisses() {
        app.launch()
        
        XCTAssertTrue(app.isDisplayingOnboarding)
        
        app.swipeLeft()
        app.swipeLeft()
        
        
        
        app.buttons["Done"].tap()
        
        XCTAssertFalse(app.isDisplayingOnboarding)
        
    }
    
    func testInterfaceVC_AlertViewShows(){
        app.launch()
        
        app.swipeLeft()
        app.swipeLeft()
        
        app.buttons["Done"].tap()
        
        XCTAssertTrue(app.isDisplayingAlertVC, "Alert VC shoud show when onboarding dismisses")
    }
    
//    func testEmailInput_WhenGivenEmail(){
//        app.launch()
//        
//        app.swipeLeft()
//        app.swipeLeft()
//        
//        app.buttons["Done"].tap()
//        
//        let emailTextField = app.textFields["Email"]
//        emailTextField.tap()
//        emailTextField.typeText("iOSDeveloper")
//        
//        XCTAssertTrue(emailTextField.staticTexts["iOSDeveloper"].exists)
//    }
    
    
}


extension XCUIApplication {
    var isDisplayingOnboarding: Bool {
        return otherElements["onboardingView"].exists
    }
    
    var isDisplayingAlertVC: Bool {
        return alerts["You did it!"].exists
    }
}
