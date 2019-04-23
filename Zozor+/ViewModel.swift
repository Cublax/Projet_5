//
//  ViewModel.swift
//  CountOnMe
//
//  Created by Alexandre Quiblier on 11/04/2019.
//  Copyright © 2019 Ambroise Collon. All rights reserved.
//

import Foundation

enum Operand: Int,CaseIterable {
    case digit0 = 0
    case digit1
    case digit2
    case digit3
    case digit4
    case digit5
    case digit6
    case digit7
    case digit8
    case digit9
}

enum OperatoR: Int,CaseIterable {
    case plus = 1
    case minus
    case time
    case equal
}

final class ViewModel {
    
    // MARK: - Outputs
    
    //var navigateToScreen: ((NextScreen) -> Void)?
    var displayText: ((String) -> Void)?


    
    // MARK: - Inputs
    
    func viewDidLoad() {
            displayText?("\(Operand.digit0.rawValue)")
    }
    func didPressOperator(at index: Int) {
       displayText?("\(index)")
    }
    
    func didPressOperand(at index: Int) {
        guard let operand = OperatoR(rawValue: index) else {return}
        displayText?("\(operand)")
    }
    
}
