//
//  Settings.swift
//  Singleton
//
//  Created by mac on 28.08.2023.
//

import UIKit

class Settings {
    static let shared = Settings()

    var colorStyle = UIColor.red
    var volumeLevel: Float = 1.0

    private init() {}
}
