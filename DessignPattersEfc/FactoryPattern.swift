//
//  FactoryPatter.swift
//  DessignPattersEfc
//
//  Created by eduardo fulgencio on 24/01/2020.
//  Copyright © 2020 Eduardo Fulgencio Comendeiro. All rights reserved.
//

import Foundation

enum FruitType {
    case apple, orange
}

protocol Fruit {
    var name: String { get } // solo lectura
}

struct Apple: Fruit {
    let name = "Apple"
}

struct Orange: Fruit {
    let name = "Orange"
}

class FruitFactory {
    
    static let shared = FruitFactory()
    
    private init() { }
    
    func makeFruit(ofType type: FruitType) -> Fruit {
        
        switch type {
        case .apple:
            return Apple()
        case .orange:
            return Orange()
        }
    }
}
