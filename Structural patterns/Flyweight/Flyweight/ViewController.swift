//
//  ViewController.swift
//  Flyweight
//
//  Created by mac on 28.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let testColor1 = UIColor.rgba(red: 1, green: 0, blue: 0.7, alpha: 1)
        let testColor2 = UIColor.rgba(red: 1, green: 0, blue: 0.7, alpha: 1)

        print(testColor1 === testColor2)
    }
}

extension UIColor {
    static var colorStore: [String: UIColor] = [:]

    class func rgba(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {

        let key = "\(red)\(green)\(blue)\(alpha)"
        if let color = colorStore[key] {
            return color
        }

        let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        colorStore[key] = color
        return color
    }
}
