//
//  ViewController.swift
//  Facade
//
//  Created by mac on 17.10.2023.
//

import UIKit

class ViewController: UIViewController {

    private let imageServer = ImageSaverFacade()
    private let image = UIImage(named: "star")!

    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            try imageServer.save(image: image, type: .png, fileName: "newFile", overwrite: true)
        } catch let error {
            print("Error: ", error.localizedDescription)
        }
    }
}

