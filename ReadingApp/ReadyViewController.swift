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
    
    var timer: Timer!
    var topicNum: Int!
    var designatedTitle = ""
    var count = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (count > 4) {
            numLabel.textColor = UIColor.init(red: 255/255, green: 55/255, blue: 34/255, alpha: 1 )
        } else if(count < 3) {
            numLabel.textColor = UIColor.init(red: 50/255, green: 200/255, blue: 150/255, alpha: 1 )
        } else {
            numLabel.textColor = UIColor.init(red: 34/255, green: 255/255, blue: 34/255, alpha: 1 )
        }
        title = designatedTitle
        numLabel.text = "\(count)"
        label1.text = "Quiz on \(designatedTitle) starting in"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(update),userInfo: nil, repeats: true)
    

        
        
        // Do any additional setup after loading the view.
    }
    
    
    @objc func update() {
        if(count > 0) {
            count -= 1
            numLabel.text = "\(count)"
        } else{
            numLabel.text = ""
            label1.text = "\(designatedTitle)"
            timer.invalidate()
            performSegue(withIdentifier: "segueId", sender: self);

        }
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueId"{
            let destVC = segue.destination as! QuizesViewController
            destVC.questionAnswer = label1.text!
            destVC.topicNum = topicNum
        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
}
}



