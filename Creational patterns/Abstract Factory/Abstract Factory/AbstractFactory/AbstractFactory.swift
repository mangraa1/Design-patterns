//
//  AbstractFactory.swift
//  Abstract Factory
//
//  Created by mac on 20.09.2023.
//

import Foundation

protocol AbstractFactory {
    func createChair() -> Chair
    func createTable() -> Table
    func createSofa() -> Sofa
}
