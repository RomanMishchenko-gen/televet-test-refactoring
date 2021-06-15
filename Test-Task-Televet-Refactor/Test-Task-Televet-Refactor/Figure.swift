//
//  Figure.swift
//  Test-Task-Televet-Refactor
//
//  Created by Roman Mishchenko on 11.06.2021.
//

import Foundation

final class Figure {
    
    var p: Any
    let a: Float
    let c: CGColor
    
    init(area: Float, color: CGColor, parent: Any) {
        self.a = area
        self.c = color
        self.p = parent
    }
    
}
