//
//  DetailViewController.swift
//  stormViewer
//
//  Created by Michael Kozub on 10/11/18.
//  Copyright © 2018 Michael Kozub. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageToLoad = selectedImage {
            imageView.image  = UIImage(named: imageToLoad)
        }
    }

}
