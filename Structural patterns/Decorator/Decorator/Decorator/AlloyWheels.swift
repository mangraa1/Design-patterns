//
//  AlloyWheels.swift
//  Decorator
//
//  Created by mac on 24.09.2023.
//

import Foundation

class AlloyWheels: MersedesDecorator {

    required init(decorator: MersedesProtocol) {
        super.init(decorator: decorator)
    }

    override func getTitle() -> String {
        super.getTitle() + " with alloy wheels"
    }

    override func getPrice() -> Int {
        super.getPrice() + 10_000
    }
}
