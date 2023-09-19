//
//  Exercise.swift
//  Factory method
//
//  Created by mac on 19.09.2023.
//

import Foundation

protocol Exercise {
    var name: String {get}
    var type: String {get}

    func start()
    func stop()
}
