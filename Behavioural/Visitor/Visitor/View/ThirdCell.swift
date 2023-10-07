//
//  ThirdCell.swift
//  Visitor
//
//  Created by mac on 07.10.2023.
//

import Foundation
import UIKit


class ThirdCell: UITableViewCell {/**/}

extension ThirdCell: HeightResultVisitable {
    func accept(_ visitor: HeightResultVisitor) -> CGFloat {
        return visitor.visit(self)
    }
}
