//
//  ImageSaverError.swift
//  Facade
//
//  Created by mac on 17.10.2023.
//

import Foundation


enum ImageSaverError: Error {
    case couldNotCreateDestinationPath
    case couldNotCreateJPEGDataFromImage
    case couldNotCreatePNGDataFromImage
    case couldNotSaveImageDestinationPath
}
