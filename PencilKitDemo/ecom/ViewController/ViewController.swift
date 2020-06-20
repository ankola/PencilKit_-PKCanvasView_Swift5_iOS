//
//  ViewController.swift
//  ecom
//
//  Created by Savan Ankola on 02/06/20.
//  Copyright © 2020 Savan Ankola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    var img = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imgView.image = self.img
    }

}
