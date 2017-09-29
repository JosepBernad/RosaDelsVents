//
//  Answer.swift
//  RosaDelsVents
//
//  Created by Sigmund Freud on 29/09/2017.
//  Copyright © 2017 Sigmund Freud. All rights reserved.
//

import UIKit

class Answer: NSObject {
    
    private var number = -1
    private var name = ""
    
    override init() {
        self.number = -1
        self.name = ""
    }
    
    init (number: Int, name: String) {
        self.number = number
        self.name = name
    }
    
    public func getNumber() -> Int {
        return self.number
    }
    
    public func getName() -> String {
        return self.name
    }
    
    
    func setNumber(number: Int) {
        self.number = number
    }
    
    public func setName(name: String) {
        self.name = name
    }
}
