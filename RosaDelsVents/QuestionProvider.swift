//
//  QuestionsAsker.swift
//  RosaDelsVents
//
//  Created by Sigmund Freud on 29/09/2017.
//  Copyright © 2017 Sigmund Freud. All rights reserved.
//

import Foundation


class QuestionProvider: NSObject {
    
    private var answerArray: [Answer] = []

    override init() {
        answerArray.append(Answer(number: 0, name: "Tramuntana"))
        answerArray.append(Answer(number: 1, name: "Gregal"))
        answerArray.append(Answer(number: 2, name: "Llevant"))
        answerArray.append(Answer(number: 3, name: "Xaloc"))
        answerArray.append(Answer(number: 4, name: "Mitjorn"))
        answerArray.append(Answer(number: 5, name: "Lebeig"))
        answerArray.append(Answer(number: 6, name: "Ponent"))
        answerArray.append(Answer(number: 7, name: "Mestral"))
    }
    
    public func getRandomAnswer(nonN: Int) -> Answer {
        let n = Int(arc4random()) % 8
        if (n == nonN) {
            return getRandomAnswer(nonN: nonN)
        } else {
            return answerArray[n]
        }
    }
    
    
    
}
