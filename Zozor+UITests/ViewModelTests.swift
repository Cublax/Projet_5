//
//  ViewModelTests.swift
//  CountOnMeTests
//
//  Created by Alexandre Quiblier on 23/04/2019.
//  Copyright © 2019 Ambroise Collon. All rights reserved.
//

@testable import CountOnMe
import XCTest

final class ViewModelTests: XCTestCase {
    
    func testGivenAViewModel_WhenViewDidLoad_ThenDisplayedTextReturnsCorrectValue() {
        let viewModel = ViewModel()
        let expectation = self.expectation(description: "Returned text")
        
        viewModel.displayText = { text in
            XCTAssertEqual(text, "0")
            expectation.fulfill()
        }
        
        viewModel.viewDidLoad()
        
        waitForExpectations(timeout: 1.0, handler: nil)
}

}
