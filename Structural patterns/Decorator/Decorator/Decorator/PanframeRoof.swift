//
//  PanframeRoof.swift
//  Decorator
//
//  Created by mac on 24.09.2023.
//

import Foundation

class PanframeRoof: MersedesDecorator {

    required init(decorator: MersedesProtocol) {
        super.init(decorator: decorator)
    }

    override func getTitle() -> String {
        super.getTitle() + " with panframe roof"
    }

    override func getPrice() -> Int {
        super.getPrice() + 5_000
    }
}
