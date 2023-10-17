//
//  PathProvider.swift
//  Facade
//
//  Created by mac on 17.10.2023.
//

import Foundation


class PathProvider {
    func createDestinationPath(fileName: String) throws -> URL {
        guard let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            throw ImageSaverError.couldNotCreateDestinationPath
        }
        let destinationPath = path.appendingPathExtension(fileName)
        print(destinationPath)
        return destinationPath
    }
}
