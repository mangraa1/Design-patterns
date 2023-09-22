//
//  Squats.swift
//  Factory method
//
//  Created by mac on 19.09.2023.
//

import Foundation

class Squats: Exercise {
    var name: String = "Squats"
    var type: String = "For legs"

    func start() {
        print("We squat")
    }

    func stop() {
        print("We're done squating")
    }
}
