//
//  BedroomFactory.swift
//  Abstract Factory
//
//  Created by mac on 20.09.2023.
//

import Foundation

class BedroomFactory: AbstractFactory {
    func createChair() -> Chair {
        print("Bedroom chair is created")
        return ChairBadroom()
    }

    func createTable() -> Table {
        print("Bedroom table is created")
        return CoffeeTableBedroom()
    }

    func createSofa() -> Sofa {
        print("Bedroom sofa is created")
        return SofaBedroom()
    }
}
