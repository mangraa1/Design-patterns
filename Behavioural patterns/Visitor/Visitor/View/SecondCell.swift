//
//  SecondCell.swift
//  Visitor
//
//  Created by mac on 07.10.2023.
//

import Foundation
import UIKit


class SecondCell: UITableViewCell {/**/}

extension SecondCell: HeightResultVisitable {
    func accept(_ visitor: HeightResultVisitor) -> CGFloat {
        return visitor.visit(self)
    }
}
