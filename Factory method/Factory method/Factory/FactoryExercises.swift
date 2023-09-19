//
//  FactoryExercises.swift
//  Factory method
//
//  Created by mac on 19.09.2023.
//

import Foundation

enum AllExercises {
    case jumping, squats
}

class FactoryExercises {
    static let shared = FactoryExercises()

    func createExercices(type: AllExercises) -> Exercise {
        switch type {
        case .squats: return Squats()
        case .jumping: return Jumping()
        }
    }

    private init() {}
}
