//
//  DataSource.swift
//  CountOnMe
//
//  Created by Alexandre Quiblier on 24/04/2019.
//  Copyright © 2019 Ambroise Collon. All rights reserved.
//

import Foundation

enum Operand: String {
    case digit0 = "0"
    case digit1 = "1"
    case digit2 = "2"
    case digit3 = "3"
    case digit4 = "4"
    case digit5 = "5"
    case digit6 = "6"
    case digit7 = "7"
    case digit8 = "8"
    case digit9 = "9"
}

enum Operators: String {
    case plus = "+"
    case minus = "-"
    case times = "*"
    case equal = "="
}

final class DataSource {
    
    // MARK: - Properties
    
    var operand: [Operand] = []
    
    var operators: [Operators] = []
    
    // MARK: - Initializer
    
    init() {
        operand = [
            .digit0,
            .digit1,
            .digit2,
            .digit3,
            .digit4,
            .digit5,
            .digit6,
            .digit7,
            .digit8,
            .digit9
        ]
        operators = [
            .plus,
            .minus,
            .times,
            .equal
        ]
    }
}
