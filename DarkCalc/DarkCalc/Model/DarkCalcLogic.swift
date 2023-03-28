//
//  DarkCalcLogic.swift
//  DarkCalc
//
//  Created by Émerson M Luz on 28/03/23.
//

import Foundation

enum Operation {
    case sum
    case subtraction
    case divider
    case multiplier
}

class DarkCalcLogic {
    
    func calculate(firstValue: Double, secondValue: Double, operation: Operation) -> Double {
        var result: Double
        
        switch operation {
        case .sum:
            result = firstValue + secondValue
        case .subtraction:
            result = firstValue - secondValue
        case .multiplier:
            result = firstValue * secondValue
        case .divider:
            result = firstValue / secondValue
        }
        return result
    }
}
