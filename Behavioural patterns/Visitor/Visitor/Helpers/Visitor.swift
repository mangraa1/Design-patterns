//
//  Visitor.swift
//  Visitor
//
//  Created by mac on 07.10.2023.
//

import Foundation


struct HeightResultVisitor {
    func visit(_ cell: FirstCell) -> CGFloat { return 30 }
    func visit(_ cell: SecondCell) -> CGFloat { return 60 }
    func visit(_ cell: ThirdCell) -> CGFloat { return 90 }
}

protocol HeightResultVisitable {
    func accept(_ visitor: HeightResultVisitor) -> CGFloat
}
