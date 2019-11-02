//
//  ReadyViewController.swift
//  ReadingApp
//
//  Created by ctssstudent on 2/11/19.
//  Copyright © 2019 ctssstudent. All rights reserved.
//

import UIKit

class ReadyViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var numLabel: UILabel!
    
    var designatedTitle = ""
    var count = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = designatedTitle
        numLabel.text = "\(count)"
        label1.text = "Quiz on \(designatedTitle) starting in"
        var timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(update),userInfo: nil, repeats: true)
    
    


        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @objc func update() {
        if(count > 1) {
            count -= 1
            numLabel.text = "\(count)"
        }
        else{
            numLabel.text = ""
            label1.text = "BEGIN!"
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
