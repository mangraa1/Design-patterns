//
//  ViewController.swift
//  Command
//
//  Created by mac on 09.10.2023.
//

import UIKit

class ViewController: UIViewController {

    private let commandExecutor = CommandExecutor()
    private var cmdUndo: StringUndoCommand?

    @IBOutlet weak var textField: UITextField!

    //MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        textField.delegate = self
    }

    //MARK: - @IBAction

    @IBAction func deleteAction(_ sender: Any) {
        textField.text = commandExecutor.undoLast()
    }
}

//MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        cmdUndo = StringUndoCommand(argument: textField.text!)
        commandExecutor.addComand(command: cmdUndo!)
        commandExecutor.forward(string)

        return true
    }
}
