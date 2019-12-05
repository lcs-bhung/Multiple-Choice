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
        
        
        
    }
    
    

}

