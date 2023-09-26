//
//  Compose.swift
//  Composite
//
//  Created by mac on 26.09.2023.
//

import Foundation


protocol ComposeProtocol {
    var name: String {get set}
    func showContent() -> Any
    func addComponent(c: ComposeProtocol)
    func contentCount() -> Int
}
