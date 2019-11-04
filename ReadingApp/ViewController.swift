//
//  ViewController.swift
//  ReadingApp
//
//  Created by ctssstudent on 19/10/19.
//  Copyright © 2019 ctssstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Tap: UITapGestureRecognizer!
    @IBOutlet weak var startLabel: SpringLabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Tapped(_ sender: Any) {
        performSegue(withIdentifier: "nextScreen", sender: nil)
    }
    

}

