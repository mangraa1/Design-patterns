//
//  KitchenFactory.swift
//  Abstract Factory
//
//  Created by mac on 20.09.2023.
//

import Foundation

class KitchenFactory: AbstractFactory {
    func createChair() -> Chair {
        print("Kitchen chair is created")
        return ChairKitchen()
    }

    func createTable() -> Table {
        print("Kitchen table is created")
        return TableKitchen()
    }

    func createSofa() -> Sofa {
        print("Kitchen sofa is created")
        return SofaKitchen()
    }
}
