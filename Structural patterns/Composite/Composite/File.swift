//
//  File.swift
//  Composite
//
//  Created by mac on 26.09.2023.
//

import Foundation


class File: ComposeProtocol {
    var name: String

    init(name: String) {
        self.name = name
    }

    func showContent() -> Any {
        return name
    }

    func addComponent(c: ComposeProtocol) {
        print("Can't add folder to file")
    }

    func contentCount() -> Int {
        return 1
    }
}
