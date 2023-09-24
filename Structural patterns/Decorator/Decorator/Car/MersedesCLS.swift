//
//  MersedesCLS.swift
//  Decorator
//
//  Created by mac on 24.09.2023.
//

import Foundation

class MersedesCLS: MersedesProtocol {

    func getPrice() -> Int {
        return 75_000
    }

    func getTitle() -> String {
        return "MersedesCLS"
    }
}
