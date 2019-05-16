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
    
    var viewModel: ViewModel!
    
    override func setUp() {
        super.setUp()
        viewModel = ViewModel()
    }
    
    func testGivenAViewModel_WhenViewDidLoad_ThenDisplayedTextReturnsCorrectValue() {
        let expectation = self.expectation(description: "Returned text")
        
        viewModel.displayedText = { text in
            XCTAssertEqual(text, "0")
            expectation.fulfill()
        }
        
        viewModel.viewDidLoad()
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidPressOperator_ThenDisplayedTextReturnsCorrectValuePlus() {
        let expectation = self.expectation(description: "Returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 1 {
                XCTAssertEqual(text, "+")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperator(at: 0)
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidPressOperator_ThenDisplayedTextReturnsCorrectValueMinus() {
        let expectation = self.expectation(description: "Returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 1 {
                XCTAssertEqual(text, "-")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperator(at: 1)
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidPressOperator_ThenDisplayedTextReturnsCorrectValueTimes() {
        let expectation = self.expectation(description: "Returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 1 {
                XCTAssertEqual(text, "*")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperator(at: 2)
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidPressOperator_ThenDisplayedTextReturnsCorrectValueEqual() {
        let expectation = self.expectation(description: "Returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 1 {
                XCTAssertEqual(text, "0")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperator(at: 3)
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    
    func testGivenAViewModel_WhenDidPressOperand_ThenDisplayedTextReturnsCorrectValueZero() {
        let expectation = self.expectation(description: " returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 1 {
                XCTAssertEqual(text, "0")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperand(at: 0)
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidPressOperand_ThenDisplayedTextReturnsCorrectValueOne() {
        let expectation = self.expectation(description: " returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 1 {
                XCTAssertEqual(text, "1")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperand(at: 1)
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidPressOperand_ThenDisplayedTextReturnsCorrectValueTwo() {
        let expectation = self.expectation(description: " returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 1 {
                XCTAssertEqual(text, "2")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperand(at: 2)
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidPressOperand_ThenDisplayedTextReturnsCorrectValueThree() {
        let expectation = self.expectation(description: " returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 1 {
                XCTAssertEqual(text, "3")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperand(at: 3)
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidPressOperand_ThenDisplayedTextReturnsCorrectValueFour() {
        let expectation = self.expectation(description: " returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 1 {
                XCTAssertEqual(text, "4")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperand(at: 4)
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidPressOperand_ThenDisplayedTextReturnsCorrectValueFive() {
        let expectation = self.expectation(description: " returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 1 {
                XCTAssertEqual(text, "5")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperand(at: 5)
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidPressOperand_ThenDisplayedTextReturnsCorrectValueSix() {
        let expectation = self.expectation(description: " returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 1 {
                XCTAssertEqual(text, "6")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperand(at: 6)
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidPressOperand_ThenDisplayedTextReturnsCorrectValueSeven() {
        let expectation = self.expectation(description: " returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 1 {
                XCTAssertEqual(text, "7")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperand(at: 7)
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidPressOperand_ThenDisplayedTextReturnsCorrectValueHeight() {
        let expectation = self.expectation(description: " returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 1 {
                XCTAssertEqual(text, "8")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperand(at: 8)
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidPressOperand_ThenDisplayedTextReturnsCorrectValueNine() {
        let expectation = self.expectation(description: " returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 1 {
                XCTAssertEqual(text, "9")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperand(at: 9)
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidAnAddition_ThenDisplayedTextIsCorrectlyReturned() {
        let expectation = self.expectation(description: "Returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 4 {
                XCTAssertEqual(text, "2")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperand(at: 1)
        viewModel.didPressOperator(at: 0)
        viewModel.didPressOperand(at: 1)
        viewModel.didPressOperator(at: 3)
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidASoustraction_ThenDisplayedTextIsCorrectlyReturned() {
        let expectation = self.expectation(description: "Returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 4 {
                XCTAssertEqual(text, "0")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperand(at: 1)
        viewModel.didPressOperator(at: 1)
        viewModel.didPressOperand(at: 1)
        viewModel.didPressOperator(at: 3)
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidAMultiplication_ThenDisplayedIsCorrectlyReturned() {
        let expectation = self.expectation(description: "Returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 4 {
                XCTAssertEqual(text, "4")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperand(at: 2)
        viewModel.didPressOperator(at: 2)
        viewModel.didPressOperand(at: 2)
        viewModel.didPressOperator(at: 3)
        
         waitForExpectations(timeout: 1.0, handler: nil)
    }
    
   
    
    
    func testGivenAViewModel_WhenDidAMultiplicationByZero_ThenDisplayedTextIsCorrectlyReturned() {
        let expectation = self.expectation(description: "Returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 4 {
                XCTAssertEqual(text,"0")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperand(at: 5)
        viewModel.didPressOperator(at: 2)
        viewModel.didPressOperand(at: 0)
        viewModel.didPressOperator(at: 3)
        
         waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenOperationWithNoDigit_ThenDisplayIsCorrectlyReturned() {
        let expectation = self.expectation(description: "Returned text")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 3 {
                XCTAssertEqual(text, "-")
                expectation.fulfill()
            }
            counter += 1
        }
        
        viewModel.viewDidLoad()
        
        viewModel.didPressOperator(at: 2)
        viewModel.didPressOperator(at: 2)
        viewModel.didPressOperator(at: 1)
        
         waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhendidpressedClearButton_ThenEmptyTemporaryPropertiesAndDisplay0() {
        let expectation = self.expectation(description: "Display 0")
        
        var counter = 0
        viewModel.displayedText = { text in
            if counter == 3 {
                XCTAssertEqual(text, "0")
                expectation.fulfill()
            }
            counter += 1
        }
        
        
        viewModel.viewDidLoad()
        viewModel.didPressOperator(at: 2)
        viewModel.didPressOperator(at: 2)
        viewModel.didPressButtonClear()
        
         waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testGivenAViewModel_WhenDidntSetASecondNumberToCalculate_ThenReturnErrorMessage() {
        let expectation = self.expectation(description: "Display error")
        
        
        
        viewModel.viewDidLoad()
        viewModel.didPressOperand(at: 2)
        viewModel.didPressOperator(at: 2)
        viewModel.didPressOperator(at: 3)
        
        XCTAssertNil(viewModel.alert)
        expectation.fulfill()
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
}
