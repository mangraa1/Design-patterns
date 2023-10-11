//
//  BaseCommandProtocol.swift
//  Command
//
//  Created by mac on 09.10.2023.
//

import Foundation


protocol BaseCommand {
    func undo() -> String
    func forward(_ str: String)
}
