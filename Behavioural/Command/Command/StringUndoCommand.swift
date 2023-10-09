//
//  StringUndoCommand.swift
//  Command
//
//  Created by mac on 09.10.2023.
//

import Foundation


class StringUndoCommand: BaseCommand {

    private var originalString: String
    private var currentString: String

    init(argument: String) {
        originalString = argument
        currentString = argument
    }

    //MARK: - Public

    public func undo() -> String {
        guard !currentString.isEmpty else { return ""}

        currentString.removeLast()
        printString()

        return currentString
    }

    public func forward(_ str: String) {
        currentString.append(str)
        printString()
    }

    //MARK: - Private
    private func printString() {
        print(currentString)
    }
}
