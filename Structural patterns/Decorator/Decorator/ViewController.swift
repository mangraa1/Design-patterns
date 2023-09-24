//
//  ViewController.swift
//  Decorator
//
//  Created by mac on 24.09.2023.
//

import UIKit

class ViewController: UIViewController {

    //MARK: @IBOutlets & Variables
    
    var mersedes: MersedesProtocol = MersedesCLS()

    @IBOutlet weak var priceLabel: UILabel! {
        didSet {
            priceLabel.text = String(mersedes.getPrice()) + "$"
        }
    }
    @IBOutlet weak var equipmentLabel: UILabel!

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - @IBAction
    @IBAction func equipmentSegment(_ sender: UISegmentedControl) {

        switch sender.selectedSegmentIndex {
        case 0:
            mersedes = MersedesCLS()
        case 1:
            mersedes = MersedesCLS()
            mersedes = PanframeRoof(decorator: mersedes)
        case 2:
            mersedes = MersedesCLS()
            mersedes = AlloyWheels(decorator: mersedes)
        default:
            break
        }
        priceLabel.text = String(mersedes.getPrice()) + "$"
        equipmentLabel.text = mersedes.getTitle()
    }
}

