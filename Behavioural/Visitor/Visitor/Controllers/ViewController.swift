//
//  ViewController.swift
//  Visitor
//
//  Created by mac on 07.10.2023.
//

import UIKit


enum CellIdentifier {
    static let firstCell = "FirstCell"
    static let secondCell = "SecondCell"
    static let thirdCell = "ThirdCell"
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        registerCell()
        tableView.dataSource = self
        tableView.delegate = self
    }

    //MARK: - Private
    private func registerCell() {
        tableView.register(FirstCell.self, forCellReuseIdentifier: CellIdentifier.firstCell)
        tableView.register(SecondCell.self, forCellReuseIdentifier: CellIdentifier.secondCell)
        tableView.register(ThirdCell.self, forCellReuseIdentifier: CellIdentifier.thirdCell)
    }
}

//MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell

        switch indexPath.row {
        case 0:
            cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.firstCell, for: indexPath) as! FirstCell
            cell.textLabel?.text = "First cell"
        case 1:
            cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.secondCell, for: indexPath) as! SecondCell
            cell.textLabel?.text = "Second cell"
        case 2:
            cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.thirdCell, for: indexPath) as! ThirdCell
            cell.textLabel?.text = "Third cell"
        default:
            return UITableViewCell()
        }
        return cell
    }
}

//MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        let cell = tableView.cellForRow(at: indexPath) as! HeightResultVisitable

        return cell.accept(HeightResultVisitor())
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}
