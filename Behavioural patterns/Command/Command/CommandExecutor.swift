//
//  CommandExecutor.swift
//  Command
//
//  Created by mac on 09.10.2023.
//

import Foundation


class CommandExecutor {
    private var arrayOfCommand = [BaseCommand]()

    func addComand(command: BaseCommand) {
        arrayOfCommand.append(command)
    }

    func forward(_ str: String) {
        for command in arrayOfCommand {
            command.forward(str)
        }
    }

    func undoLast() -> String {
        var title = String()
        for command in arrayOfCommand {
            title = command.undo()
        }
        return title
    }
}
