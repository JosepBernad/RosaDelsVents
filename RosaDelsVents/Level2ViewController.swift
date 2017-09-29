//
//  Level2ViewController.swift
//  RosaDelsVents
//
//  Created by Sigmund Freud on 29/08/2017.
//  Copyright © 2017 Sigmund Freud. All rights reserved.
//

import UIKit

class Level2ViewController: UIViewController {

    private let questionProvider: QuestionProvider = QuestionProvider.init()
    private var currentAnswer: Answer = Answer()
    private var previousN: Int = -1
    
    @IBOutlet weak var point0: UIImageView!
    @IBOutlet weak var point1: UIImageView!
    @IBOutlet weak var point2: UIImageView!
    @IBOutlet weak var point3: UIImageView!
    @IBOutlet weak var point4: UIImageView!
    @IBOutlet weak var point5: UIImageView!
    @IBOutlet weak var point6: UIImageView!
    @IBOutlet weak var point7: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askQuestion(nonN: -1)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = "Level 2"
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
            point0.alpha = 1.0
        case 1:
            point1.alpha = 1.0
        case 2:
            point2.alpha = 1.0
        case 3:
            point3.alpha = 1.0
        case 4:
            point4.alpha = 1.0
        case 5:
            point5.alpha = 1.0
        case 6:
            point6.alpha = 1.0
        case 7:
            point7.alpha = 1.0
        default:
            break
            
        }
        
    }
    
    private func clearPoints() {
        point0.alpha = 0.0
        point1.alpha = 0.0
        point2.alpha = 0.0
        point3.alpha = 0.0
        point4.alpha = 0.0
        point5.alpha = 0.0
        point6.alpha = 0.0
        point7.alpha = 0.0
    }
    
    @IBAction func answerButtonPressed(_ sender: Any) {
        guard let button = sender as? UIButton else {
            return
        }
        
        if (currentAnswer.getNumber() == button.tag) {
            print("Yeeeeeeees")
            askQuestion(nonN: currentAnswer.getNumber())
        } else {
            print("ERRRROOOOOOOOOOOR")
            
        }
        
    }
    

}
