//
//  Folder.swift
//  Composite
//
//  Created by mac on 26.09.2023.
//

import Foundation


class Folder: ComposeProtocol {
    var name: String
    private var contentArray = [ComposeProtocol]()

    init(name: String) {
        self.name = name
    }

    func showContent() -> Any {
        return contentArray
    }

    func addComponent(c: ComposeProtocol) {
        contentArray.append(c)
    }

    func contentCount() -> Int {
        contentArray.count
    }
}
