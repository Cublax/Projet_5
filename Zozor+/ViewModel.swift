//
//  ViewModel.swift
//  CountOnMe
//
//  Created by Alexandre Quiblier on 11/04/2019.
//  Copyright © 2019 Ambroise Collon. All rights reserved.
//

import Foundation

final class ViewModel {
    
    // MARK: - Private properties
    
    private let dataSource = DataSource()
    
    private var firstNumber: [String] = []
    
    private var secondNumber: [String] = []
    
    private var operators: [String] = []
    
    private var copyOperator = ""
    private var copySecondNumber = ""
    
    private var result = "0" {
        didSet {
            displayedText?(result)
        }
    }
    
    // MARK: - Public Properties
    
    enum Alert {
        case error(title: String, message: String, actionTitle: String)
    }
    
    // MARK: - Outputs
    
    var alert: ((Alert) -> Void)?
    
    var displayedText: ((String) -> Void)?
    
    // MARK: - Inputs
    
    func viewDidLoad() {
        displayedText?("\(Operand.digit0.rawValue)")
    }
    
    func didPressOperator(at index: Int) {
        guard index < dataSource.operators.count else  {return}
        let sign = dataSource.operators[index]
        if case .equal = sign {
            proceedEqual()
        } else {
            addOperator(with: sign.rawValue)
            displayedText?(operators.joined())
        }
    }
    
    func didPressOperand(at index: Int) {
        guard index < dataSource.operand.count else  {return}
        let digit = dataSource.operand[index]
        addDigit(with: digit.rawValue)
    }
    
    func didPressButtonClear() {
        clearAllProperties()
        displayedText?("0")
    }
    
    // MARK: - Methods
    
    private func proceedEqual() {
        if !firstNumber.isEmpty, !secondNumber.isEmpty, !operators.isEmpty {
            calculate()
        } else if firstNumber.isEmpty, secondNumber.isEmpty, operators.isEmpty, copyOperator != "", copySecondNumber != "" {
        firstNumber.append(result)
        operators.append(copyOperator)
        secondNumber.append(copySecondNumber)
        calculate()
    } else {
            cleartemporayProperties()
            result = "0"
            alert?(.error(title: "Wrong entry", message: "This can not be calculated", actionTitle: "OK"))
        }
    }
    
    private func addDigit(with number: String) {
        if operators.isEmpty {
            firstNumber.append(number)
            displayedText?(firstNumber.joined())
        } else if !(operators.isEmpty) && firstNumber.isEmpty {
            operators = []
            firstNumber.append(number)
            displayedText?(firstNumber.joined())
        }else {
            secondNumber.append(number)
            displayedText?(secondNumber.joined())
        }
    }
    
    private func addOperator(with `operator`: String) {
        if !firstNumber.isEmpty, !operators.isEmpty, !secondNumber.isEmpty {
            calculate()
            firstNumber.append(result)
            operators.append(`operator`)
        }else if firstNumber.isEmpty, operators.isEmpty, secondNumber.isEmpty, !result.isEmpty {
            firstNumber.append(result)
            operators.append(`operator`)
        } else {
            operators = []
            operators.append(`operator`)
        }
    }
    
    private func calculate() {
        var total = 0
        if let firstNumber = Int(self.firstNumber.joined()), let secondNumber = Int(self.secondNumber.joined()) {
            if let `operator` = Operators(rawValue: String(self.operators.joined())) {
                switch `operator` {
                case .plus:
                    total = firstNumber + secondNumber
                case .minus:
                    total = firstNumber - secondNumber
                case .times:
                    total = firstNumber * secondNumber
                default:
                    break
                }
                copyTemporaryProperties()
                cleartemporayProperties()
                result = String(total)
            }
        }
    }
    
    private func cleartemporayProperties() {
        firstNumber = []
        secondNumber = []
        operators = []
    }
    
    private func clearAllProperties() {
        cleartemporayProperties()
        copyOperator = ""
        copySecondNumber = ""
    }
    
    private func copyTemporaryProperties() {
        copyOperator = ""
        copySecondNumber = ""
        copyOperator = String(self.operators.joined())
        copySecondNumber = self.secondNumber.joined()
    }
}
