//
//  ImageSaverFacade.swift
//  Facade
//
//  Created by mac on 17.10.2023.
//

import UIKit


class ImageSaverFacade {
    private let imageDataProvider = ImageDataProvider()
    private let pathProvider = PathProvider()

    public func save(image: UIImage, type: ImageType, fileName: String, overwrite: Bool) throws {
        let destinationURL = try pathProvider.createDestinationPath(fileName: fileName)
        let imageData = try imageDataProvider.data(from: image, type: type)
        let writeOptions: Data.WritingOptions = overwrite ? (.atomic) : (.withoutOverwriting)
        try imageData.write(to: destinationURL, options: writeOptions)
    }
}
