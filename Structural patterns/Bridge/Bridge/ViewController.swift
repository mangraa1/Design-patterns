//
//  ViewController.swift
//  Bridge
//
//  Created by mac on 27.09.2023.
//

import UIKit

class ViewController: UIViewController {

    private let days = ["Пн", "Вт", "Ср", "Чт", "Пт", "Сб", "Вс"]

    @IBOutlet weak var dayPickerView: DayPickerView!

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        dayPickerView.dataSource = self
    }
}

//MARK: - DayPickerViewDataSource
extension ViewController: DayPickerViewDataSource {
    func dayPickerCount(_ dayPicker: DayPickerView) -> Int {
        days.count
    }

    func dayPickerTitle(_ dayPicker: DayPickerView, indexPath: IndexPath) -> String {
        return days[indexPath.row]
    }
}

