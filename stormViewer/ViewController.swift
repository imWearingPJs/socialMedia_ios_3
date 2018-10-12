//
//  ViewController.swift
//  stormViewer
//
//  Created by Michael Kozub on 10/11/18.
//  Copyright © 2018 Michael Kozub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        print("filenames: ", pictures)
    }


}

