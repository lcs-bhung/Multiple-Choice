//
//  ViewController.swift
//  Multiple Choice
//
//  Created by Branton Hung on 2019-12-03.
//  Copyright © 2019 Branton Hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var numberOfQuestions: UITextField!
    @IBOutlet weak var studentAnswers: UITextField!
    @IBOutlet weak var correctAnswers: UITextField!
    @IBOutlet weak var result: UITextView!
    
    
    @IBAction func checkAnswers(_ sender: Any) {
        //Use guard statements
        guard let numberOfQuesionsAsString = numberOfQuestions.text, numberOfQuesionsAsString != "" else {
            result.text = "please enter an integer value greater than 0 "
            return
        }
        guard let studentAnswers = studentAnswers.text, studentAnswers != "" else {
            result.text = "please be sure you imput exactly \(numberOfQuesionsAsString) student answers"
            return
        }
        guard let correctAnswers = correctAnswers.text, correctAnswers != "" else {
            result.text = "Please be sure you enter exactly \(numberOfQuesionsAsString) answers for the answer key"
            return
        }
        var offset = 0
        //make offset variable to determine the character location
        var score = 0
        //Determine the score
        for character in studentAnswers {
            //Get the first answer in the student answers
            let indexStudent = studentAnswers.index(studentAnswers.startIndex, offsetBy: offset)
            let studentAnswer = studentAnswers[indexStudent]
            //Get the first correct answer
            let indexAnswer = correctAnswers.index(correctAnswers.startIndex, offsetBy: offset)
            let correctAnswer = correctAnswers[indexAnswer]
            
            if studentAnswer == correctAnswer {
                score += 1
            }
            
            offset += 1
            
            
            result.text = "The student answered \(score) question(s) correctly"
        }
        
        
        
        
        
    }
    
    
    
}

