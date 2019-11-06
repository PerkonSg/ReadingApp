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
    @IBOutlet weak var cheerLabel: UILabel!
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button1Label: UILabel!
    @IBOutlet weak var button2label: UILabel!
    @IBOutlet weak var button3label: UILabel!
    var topicNum: Int!
    let questions = [
        [Question(questionasked: "Which of these is not a prime number? 69, 96, 420, 69420", answer1: "all", answer2: "none", answer3: "69", correctanswer: "all")],
        [Question(questionasked: "What is an integer?", answer1: "Abs. value of integer x is a whole number", answer2: "Abs. value of integer x is a whole number", answer3: "I dont know", correctanswer: "A Number")],
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
    let topics = ["Prime Numbers, HCF & LCM", "Integers, Rational Numbers & Real Numbers", "Approximation & Estimation", "Rate, Ratio, Speed and Percentage", "Basic Algebra & Algebraic Manipulation", "Linear Equations & Simple Inequalities", "Basic Algebraic Formula", "Number Patterns", "Application of Math in Practical Situations", "Set Notations", "Venn Diagrams", "Quadratic Equations", "Basic Geometry", "Triangles, Quadrilaterals and Polygons", "Perimeter and Area of Plane Figures", "Volume and Surface Area of Solids", "Statistical Data Handling", "Averages of Statistical Data"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cheerLabel.isHidden = true
        topicLabel.text = "\(questionAnswer)"
        let questionSet = questions[topicNum]
        questionLabel.text = questionSet[0].questionasked
        button1Label.text = questionSet[0].answer1
        button2label.text = questionSet[0].answer2
        button3label.text = questionSet[0].answer3
        
        
        
        topicLabel.text = topics[topicNum]
        button1.backgroundColor = UIColor.init(red: 200/255, green: 120/255, blue: 99/255, alpha: 1 )
        button1.layer.cornerRadius = 10.0
        button2.backgroundColor = UIColor.init(red: 200/255, green: 80/255, blue: 99/255, alpha: 1 )
        button2.layer.cornerRadius = 10.0
        button3.backgroundColor = UIColor.init(red: 200/255, green: 40/255, blue: 99/255, alpha: 1 )
        button3.layer.cornerRadius = 10.0
        
        // Do any additional setup after loading the view.
    }
    @IBAction func button1Pressed(_ sender: Any) {
        if questions.questionasked = questions.correctanswer {
        print("correct")
        cheerLabel.text = "Correct"
        }
        else{
            print("wrong")
        }
    }
    @IBAction func button2Pressed(_ sender: Any) {
            
        }
    
    @IBAction func button3Pressed(_ sender: Any) {
   
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
