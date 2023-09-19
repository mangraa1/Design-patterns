//
//  Jumpting.swift
//  Factory method
//
//  Created by mac on 19.09.2023.
//

import Foundation

class Jumping: Exercise {
    var name: String = "Jumping"
    var type: String = "For legs"

    func start() {
        print("We jump")
    }

    func stop() {
        print("We're done jumping")
    }
}
