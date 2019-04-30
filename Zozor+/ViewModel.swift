//
//  ViewModel.swift
//  CountOnMe
//
//  Created by Alexandre Quiblier on 11/04/2019.
//  Copyright © 2019 Ambroise Collon. All rights reserved.
//

import Foundation

final class ViewModel {
    
    let dataSource = DataSource()
    
    private var firstNumber: [String] = []
    private var secondNumber: [String] = []
    private var operators: [String] = []
    private var result = "0"
    
    // MARK: - Outputs
    
    // var navigateToScreen: ((NextScreen) -> Void)?
    var displayText: ((String) -> Void)?
    
    // MARK: - Inputs
    
    func viewDidLoad() {
            displayText?("\(Operand.digit0.rawValue)")
    }
    
    func didPressOperator(at index: Int) {
        guard index < dataSource.operators.count else  {return}
        let sign = dataSource.operators[index]
        if case .equal = sign {
            equalButton()
            
        } else {
            addOperator(with: sign.rawValue)
            displayText?(operators.joined())
        }
    }
    
     func didPressOperand(at index: Int) {
        guard index < dataSource.operand.count else  {return}
        let digit = dataSource.operand[index]
        addDigit(with: digit.rawValue)
    }
    
    
    
    // MARK: - Methods
    
    private func equalButton() {
        if !firstNumber.isEmpty && !secondNumber.isEmpty && !operators.isEmpty {
            calculate()
        } else {
            clear()
            result = "="
        }
        displayText?(result)
    }
    
    private func addDigit(with number: String) {
        if operators.isEmpty {
            firstNumber.append(number)
            displayText?(firstNumber.joined())
        } else if !(operators.isEmpty) && firstNumber.isEmpty {
            operators = []
            firstNumber.append(number)
            displayText?(firstNumber.joined())
        }else {
            secondNumber.append(number)
            displayText?(secondNumber.joined())
        }
    }
    
    private func addOperator(with operatore: String) {
        if !firstNumber.isEmpty && !operators.isEmpty && !secondNumber.isEmpty {
            calculate()
            firstNumber.append(result)
            operators.append(operatore)
        }else if firstNumber.isEmpty && operators.isEmpty && secondNumber.isEmpty && !result.isEmpty {
            firstNumber.append(result)
            operators.append(operatore)
        } else {
            operators = []
            operators.append(operatore)
        }
    }
    
    private func calculate() {
        var total = 0
        
        if let nbUn = Int(self.firstNumber.joined()), let nbTwo = Int(self.secondNumber.joined()), let oper = String(self.operators.joined()) {
            if let `operator` = Operators(rawValue: oper) {
                switch `operator` {
                case .plus:
                    total = nbUn + nbTwo
                case .minus:
                    total = nbUn - nbTwo
                case .times:
                    total = nbUn * nbTwo
                default:
                    break
                }
                clear()
                result = String(total)
            }
        } else {
            clear()
        }
    }
    
    
    private func clear() {
        firstNumber = []
        secondNumber = []
        operators = []
    }
    
}
