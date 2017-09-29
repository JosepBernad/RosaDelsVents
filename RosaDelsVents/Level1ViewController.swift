//
//  Level1ViewController.swift
//  RosaDelsVents
//
//  Created by Sigmund Freud on 29/08/2017.
//  Copyright © 2017 Sigmund Freud. All rights reserved.
//

import UIKit

class Level1ViewController: UIViewController {

    private let questionProvider: QuestionProvider = QuestionProvider.init()
    private var currentAnswer: Answer = Answer()
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askQuestion(nonN: -1)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = "Level 1"
    }
    
    private func askQuestion(nonN: Int) {
        questionLabel.textColor = UIColor.black
        currentAnswer = questionProvider.getRandomAnswer(nonN: nonN)
        print(String(currentAnswer.getNumber()) + " " + currentAnswer.getName())
        questionLabel.text = currentAnswer.getName()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: Any) {
        guard let button = sender as? UIButton else {
            return
        }
        
        if (currentAnswer.getNumber() == button.tag) {
            print("Yeeeeeeees")
            askQuestion(nonN: currentAnswer.getNumber())
        } else {
            questionLabel.textColor = UIColor.red
            print("ERRRROOOOOOOOOOOR")
        }
    }
    
    
    
    
    
    
}
