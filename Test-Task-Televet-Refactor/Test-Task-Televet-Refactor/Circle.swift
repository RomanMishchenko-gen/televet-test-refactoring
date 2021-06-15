//
//  Circle.swift
//  Test-Task-Televet-Refactor
//
//  Created by Roman Mishchenko on 11.06.2021.
//

import Foundation

final class Circle {
    
    var r: Float
    var d: Float
    
    init(r: Float) {
        self.r = r
        self.d = r*2
    }
    
    public func set(_ r: Float) {
        self.r = r
        self.d = r*2
    }
    
    func draw() -> Figure {
        let area = Float.pi*(self.d/2)*self.r
        let figure = Figure(area: area, color: .black, parent: self)
        return figure
    }
    
}
