//
//  QuizesViewController.swift
//  ReadingApp
//
//  Created by ctssstudent on 4/11/19.
//  Copyright © 2019 ctssstudent. All rights reserved.
//

import UIKit

class QuizesViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    var questionQuestion = ""
    var questionAnswer = ""
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    var topicNum: Int!
    let questions = [ 
        [Question(questionasked: "Which of these is not a prime number? 69, 96, 420, 69420", answer1: "all", answer2: "none", answer3: "69", correctanswer: "all")],
        [Question(questionasked: "What is an integer?", answer1: "Abs. value of integer x is a whole number", answer2: "A number", answer3: "I dont know", correctanswer: "A Number")],
        [Question(questionasked: "Round the value of 3.9596 to 3 s.f.", answer1: "3.96", answer2: "3.90", answer3: "3.33", correctanswer: "3.96")],
        [Question(questionasked: "What is a rate?", answer1: "Max", answer2: "William", answer3: "Uganda", correctanswer: "Max")],
        [Question(questionasked: "Simplify 13(x+18x)", answer1: "247x", answer2: "x square", answer3: "4", correctanswer: " 247x")],
        [Question(questionasked: "Solve the equation: m-7+2=2m+9", answer1: "m", answer2: "-14", answer3: "45", correctanswer: "-14")],
        [Question(questionasked: "Expand and simplify (4x-5y)square", answer1: "16x**2 -40xy + 25y**2", answer2: "xy", answer3: "z", correctanswer: "16x**2 -40xy + 25y**2")],
        [Question(questionasked: "What is the common difference of the following set of numbers: 1,4,7,10,13", answer1: "3", answer2: "6", answer3: "9", correctanswer: "3")],
        [Question(questionasked: "Adam is fat and lazy, if he travels only 3km in a day, what is his speed in metres per hour?", answer1: "125m/h", answer2: "7km/h", answer3: "3km/h", correctanswer: "125km/h")],
        [Question(questionasked: "Solve x2-(a+b)x+ab = 0", answer1: "Solve x2-(a+b)x+ab = 0", answer2: "5", answer3: "6", correctanswer: "7")],
        [Question(questionasked: "Solve x2-(a+b)x+ab = 0", answer1: "Solve x2-(a+b)x+ab = 0", answer2: "5", answer3: "6", correctanswer: "7")],
        [Question(questionasked: "Solve x2-(a+b)x+ab = 0", answer1: "Solve x2-(a+b)x+ab = 0", answer2: "5", answer3: "6", correctanswer: "7")],
        [Question(questionasked: "Solve x2-(a+b)x+ab = 0", answer1: "Solve x2-(a+b)x+ab = 0", answer2: "5", answer3: "6", correctanswer: "7")],
        [Question(questionasked: "Solve x2-(a+b)x+ab = 0", answer1: "Solve x2-(a+b)x+ab = 0", answer2: "5", answer3: "6", correctanswer: "7")],
        [Question(questionasked: "Solve x2-(a+b)x+ab = 0", answer1: "Solve x2-(a+b)x+ab = 0", answer2: "5", answer3: "6", correctanswer: "7")],
        [Question(questionasked: "Solve x2-(a+b)x+ab = 0", answer1: "Solve x2-(a+b)x+ab = 0", answer2: "5", answer3: "6", correctanswer: "7")],
        [Question(questionasked: "Solve x2-(a+b)x+ab = 0", answer1: "Solve x2-(a+b)x+ab = 0", answer2: "5", answer3: "6", correctanswer: "7")],
        [Question(questionasked: "Solve x2-(a+b)x+ab = 0", answer1: "Solve x2-(a+b)x+ab = 0", answer2: "5", answer3: "6", correctanswer: "7")]
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        topicLabel.text = "\(questionAnswer)"
        button1.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1 )
        button1.layer.cornerRadius = 10.0
        button2.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1 )
        button2.layer.cornerRadius = 10.0
        button3.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1 )
        button3.layer.cornerRadius = 10.0

        // Do any additional setup after loading the view.
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
