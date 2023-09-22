//
//  ViewController.swift
//  Abstract Factory
//
//  Created by mac on 20.09.2023.
//

import UIKit

class ViewController: UIViewController {

    private var chair: Chair?
    private var sofa: Sofa?
    private var table: Table?

    //MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: - @IBAction

    @IBAction func kitchenOrder(_ sender: Any) {
        chair = KitchenFactory().createChair()
        sofa = KitchenFactory().createSofa()
        table = KitchenFactory().createTable()
    }

    @IBAction func bedroomOrder(_ sender: Any) {
        chair = BedroomFactory().createChair()
        sofa = BedroomFactory().createSofa()
        table = BedroomFactory().createTable()
    }
}

