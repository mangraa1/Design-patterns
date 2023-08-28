//
//  ViewController.swift
//  Singleton
//
//  Created by mac on 28.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(Settings.shared.volumeLevel)

        Settings.shared.volumeLevel = 2
        
        print(Settings.shared.volumeLevel)
    }
}

