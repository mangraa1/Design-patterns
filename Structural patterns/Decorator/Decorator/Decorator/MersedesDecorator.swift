//
//  MersedesDecorator.swift
//  Decorator
//
//  Created by mac on 24.09.2023.
//

import Foundation

class MersedesDecorator: MersedesProtocol {
    private let decoratorType: MersedesProtocol

    required init(decorator: MersedesProtocol) {
        decoratorType = decorator
    }

    func getPrice() -> Int {
        return decoratorType.getPrice()
    }

    func getTitle() -> String {
        return decoratorType.getTitle()
    }
}
