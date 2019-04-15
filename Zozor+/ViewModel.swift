//
//  ViewModel.swift
//  CountOnMe
//
//  Created by Alexandre Quiblier on 11/04/2019.
//  Copyright © 2019 Ambroise Collon. All rights reserved.
//

import Foundation

enum Digit: Int,CaseIterable {
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

enum OperatoR: String {
    case Plus = "+"
    case Minus = "-"
    case Division = "/"
    case Equal = "="
}

final class ViewModel {
    
    // MARK: - Outputs
    
    var navigateToScreen: ((nextScreen) -> Void)?
    var displayText: ((String) -> Void)?


    
    // MARK: - Inputs
    
    func viewDidLoad() {
        
    }
    func didPressOperator(at index: Int) {
        
    }
    func didPressOperand(at index: String) {
       
    }
    
}
