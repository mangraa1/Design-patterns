//
//  DayPickerView.swift
//  Bridge
//
//  Created by mac on 27.09.2023.
//

import UIKit


protocol DayPickerViewDataSource {
    func dayPickerCount(_ dayPicker: DayPickerView) -> Int
    func dayPickerTitle(_ dayPicker: DayPickerView, indexPath: IndexPath) -> String
}


class DayPickerView: UIControl {
    public var dataSource: DayPickerViewDataSource? {
        didSet {
            setupView()
        }
    }

    private var buttons = [UIButton]()
    private var stackView: UIStackView!

    //MARK: - System
    override func layoutSubviews() {
        super.layoutSubviews()
        stackView.frame = bounds
    }

    //MARK: - Private
    private func setupView() {
        let count = dataSource?.dayPickerCount(self)

        for item in 0 ..< count! {
            let indexPath = IndexPath(row: item, section: 0)
            let title = dataSource?.dayPickerTitle(self, indexPath: indexPath)

            let button = UIButton(type: .system)
            button.setTitle(title, for: .normal)
            button.setTitleColor(.lightGray, for: .normal)
            button.setTitleColor(.white, for: .highlighted)
            button.tag = item
            button.addTarget(self, action: #selector(selectedButton), for: .touchUpInside)

            buttons.append(button)
            self.addSubview(button)
        }

        stackView = UIStackView(arrangedSubviews: buttons)

        self.addSubview(stackView)

        stackView.spacing = 8
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
    }

    @objc func selectedButton(sender: UIButton) {
        _ = buttons.map { $0.isSelected = false }
        let index = sender.tag
        let button = self.buttons[index]
        button.isSelected = true
    }
}
