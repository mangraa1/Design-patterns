//
//  LoadServiceProtocol.swift
//  Proxy
//
//  Created by mac on 25.09.2023.
//

import Foundation

protocol LoadServiceProtocol {
    func loadImage(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ())
}
