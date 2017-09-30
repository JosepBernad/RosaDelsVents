//
//  Level3ViewController.swift
//  RosaDelsVents
//
//  Created by Sigmund Freud on 29/08/2017.
//  Copyright © 2017 Sigmund Freud. All rights reserved.
//

import UIKit

class Level3ViewController: UIViewController {

    private let questionProvider: QuestionProvider = QuestionProvider.init()
    private var currentAnswer: Answer = Answer()
    
    @IBOutlet weak var point0: UIImageView!
    @IBOutlet weak var point1: UIImageView!
    @IBOutlet weak var point2: UIImageView!
    @IBOutlet weak var point3: UIImageView!
    @IBOutlet weak var point4: UIImageView!
    @IBOutlet weak var point5: UIImageView!
    @IBOutlet weak var point6: UIImageView!
    @IBOutlet weak var point7: UIImageView!
    
    @IBOutlet weak var answerTextLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerTextLabel.becomeFirstResponder()
        answerTextLabel.autocorrectionType = .no
        
        clearPoints()
        askQuestion(nonN: -1)
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = "Level 3"
    }
    
    private func askQuestion(nonN: Int) {
        currentAnswer = questionProvider.getRandomAnswer(nonN: nonN)
        print(String(currentAnswer.getNumber()) + " " + currentAnswer.getName())
        printPoint()
    }
    
    private func printPoint() {
        clearPoints()
        
        switch currentAnswer.getNumber() {
        case 0:
            point0.isHidden = false
        case 1:
            point1.isHidden = false
        case 2:
            point2.isHidden = false
        case 3:
            point3.isHidden = false
        case 4:
            point4.isHidden = false
        case 5:
            point5.isHidden = false
        case 6:
            point6.isHidden = false
        case 7:
            point7.isHidden = false
        default:
            break
            
        }
        
    }
    
    private func clearPoints() {
        point0.isHidden = true
        point1.isHidden = true
        point2.isHidden = true
        point3.isHidden = true
        point4.isHidden = true
        point5.isHidden = true
        point6.isHidden = true
        point7.isHidden = true
    }
    
    @IBAction func submitButtonPressed(_ sender: Any) {
        print(answerTextLabel.text!)
        if (answerTextLabel.text! == currentAnswer.getName()) {
            askQuestion(nonN: currentAnswer.getNumber())
            answerTextLabel.text = ""
        }
    }
    
}
