//
//  DetailViewController.swift
//  Proxy
//
//  Created by mac on 25.09.2023.
//

import UIKit

class DetailViewController: UIViewController {

    //MARK: @IBOutlet & Variables

    private let url = URL(string: "https://images.pexels.com/photos/220769/pexels-photo-220769.jpeg?auto=compress&cs=tinysrgb&w=1200")!

    @IBOutlet weak var imageView: UIImageView!

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        loadImage()
    }

    //MARK: - @IBAction
    @IBAction func reloadButton(_ sender: Any) {
        cacheData = nil
        imageView.image = nil
        loadImage()
    }

    //MARK: - Private
    private func loadImage() {
        let imageService = LoadImageService()
        let proxy = Proxy(service: imageService)

        proxy.loadImage(url: url) { [weak self] data, response, error in
            guard let self = self, let data = data, error == nil else { return }

            DispatchQueue.main.async {
                self.imageView.image = UIImage(data: data)
            }
        }
    }
}
