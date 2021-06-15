//
//  main.swift
//  Test-Task-Televet-Refactor
//
//  Created by Roman Mishchenko on 11.06.2021.
//

import Foundation

//FIRST
func firstFunction() {
    /*---*/
    print("\n")
    print("==============")
    print("\n")
    
    let firstCircle = Circle(r: 5.0)
    let secondCircle = Circle(r: 5.0)

    let firstFigure = firstCircle.draw()
    let secondFigure = secondCircle.draw()
    /*---*/

    if firstFigure.a == secondFigure.a && firstFigure.c == secondFigure.c {
        print("First Figure is equal to second")
    }

    print("\n")
    print("==============")
    print("\n")
}

//SECOND
func secondFunction() {
    /*---*/
    let firstCircle = Circle(r: 5.0)
    let secondCircle = Circle(r: 5.0)
    let firstSquare = Square(a: 5.0)
    let secondSquare = Square(a: 10.0)
    /*---*/

    let array: [Any] = [firstCircle, firstSquare, secondCircle, secondSquare]

    for item in array {
        
        var figure: Figure?
        
        if let circle = item as? Circle {
            figure = circle.draw()
        }
        
        if let square = item as? Square {
            figure = square.draw()
        }
        
        print("Area of figure = \(figure?.a ?? 0.0)")
        
    }

    print("\n")
    print("==============")
    print("\n")
}

//THIRD
func thirdFunction() {
    /*---*/
    let circle = Circle(r: 5.0)
    let square = Square(a: 5.0)
    
    let firstFigure = circle.draw()
    let secondFigure = square.draw()
    /*---*/
    
    func getParentCircle(from figure: Figure) -> Circle? {
        if let circle = figure.p as? Circle {
            return circle
        }
        return nil
    }

    func getParentSquare(from figure: Figure) -> Square? {
        if let square = figure.p as? Square {
            return square
        }
        return nil
    }
    
    let paC1 = getParentCircle(from: firstFigure)
    let paS1 = getParentSquare(from: firstFigure)
    let paC2 = getParentCircle(from: secondFigure)
    let paS2 = getParentSquare(from: secondFigure)
    
    if paC1?.r == circle.r && paC1?.d == circle.d {
        print("First Figure is Circle")
    }
    if paC2?.r == circle.r && paC1?.d == circle.d {
        print("Second Figure is Circle")
    }
    if paS1?.a == square.a {
        print("First Figure is Square")
    }
    if paS2?.a == square.a {
        print("Second Figure is Square")
    }
    
    print("\n")
    print("==============")
    print("\n")
}

//FOURTH
func fourthFunction () {
    let c11183 = Circle(r: 1.0)
    let c11163 = Circle(r: 2.0)
    let c11193 = Circle(r: 3.0)
    
    func getR(_ c: Circle) -> Float {
        let r = c.r
        return r
    }
    
    print("r1 = \(c11183.r)")
    print("r2 = \(c11163.r)")
    print("r3 = \(c11193.r)")
    
    let r1 = getR(c11183)
    let r2 = getR(c11183)
    let r3 = getR(c11193)
    
    let s = r1+r2+r3

    print("Sum of c11183, c11163, c11193 = \(s)")
    
    print("\n")
    print("==============")
    print("\n")
}

//FIFTH
func fifthFunction() {
    /*---*/
    let circle1 = Circle(r: 1.0)
    let circle2 = Circle(r: 2.0)
    let circle3 = Circle(r: 3.0)
    let circle4 = Circle(r: 4.0)
    let circle5 = Circle(r: 5.0)
    /*---*/
    
    func doCircleWork(_ circle: Circle) -> (()->()) {
        if circle.r == 1.0 {
            return {
                let area = Float.pi * circle.r * circle.r
                print(area)
            }
        } else if circle.r == 2.0 {
            return {
                circle2.r = 13
                print("Diameter of circle2 = \(circle2.d)")
            }
        } else if circle.r == 3.0 {
            return {
                let length = Float.pi * circle.d
                print("Lenght of circle = \(length)")
            }
        } else if circle.r == 4.0 {}
        else if circle.r == 5.0 {
            return {
                print("Circle is valid? \(circle.r * 2 == circle.d)")
            }
        }
        return {
            print("Invalid Circle Radius")
        }
    }
    
    let first = doCircleWork(circle1)
    let second = doCircleWork(circle2)
    let third = doCircleWork(circle3)
    let fourth = doCircleWork(circle4)
    let fifth = doCircleWork(circle5)
    first()
    second()
    third()
    fourth()
    fifth()
    
    print("\n")
    print("==============")
    print("\n")
}

//SIX
func sixFunction() {
    /*---*/
    let circle1 = Circle(r: 1.0)
    let circle2 = Circle(r: 2.0)
    let circle3 = Circle(r: 1.0)
    let circle4 = Circle(r: 4.0)
    let circle5 = Circle(r: 3.0)
    let circle6 = Circle(r: 2.0)
    /*---*/
    
    var collection: [Circle] = []
    collection.append(circle1)
    collection.append(circle2)
    collection.append(circle3)
    collection.append(circle4)
    collection.append(circle5)
    collection.append(circle6)
    
    var indexesToRemove: [Int] = []
    for i in 0..<collection.count {
        for j in 0..<collection.count {
            if i != j && collection[i].r == collection[j].r && !indexesToRemove.contains(i) && !indexesToRemove.contains(j) {
                indexesToRemove.append(j)
            }
        }
    }
    
    indexesToRemove.sort(by: >)
    
    for item in indexesToRemove {
        collection.remove(at: item)
    }
    
    print("Collection Without Repeats = \(collection.map{ $0.r})")
    
    print("\n")
    print("==============")
    print("\n")
}

firstFunction()
secondFunction()
thirdFunction()
fourthFunction()
fifthFunction()
sixFunction()
