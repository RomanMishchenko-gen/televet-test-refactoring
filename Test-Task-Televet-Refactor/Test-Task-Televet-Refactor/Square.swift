//
//  Square.swift
//  Test-Task-Televet-Refactor
//
//  Created by Roman Mishchenko on 11.06.2021.
//

import Foundation

final class Square {
    var a: Float
    
    init(a: Float) {
        self.a = a
    }
    
    func draw() -> Figure {
        let area = a * a
        let figure = Figure(area: area, color: .white, parent: self)
        return figure
    }
}
