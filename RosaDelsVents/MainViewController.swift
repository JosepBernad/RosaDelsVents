//
//  ViewController.swift
//  RosaDelsVents
//
//  Created by Sigmund Freud on 29/08/2017.
//  Copyright © 2017 Sigmund Freud. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func switchView(n: Int) -> Void {
        let nString = String(n)
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "level" + nString) as! Level1ViewController
        self.present(newViewController, animated: true, completion: nil)
    }
    
    @IBAction func level1Pressed(_ sender: Any) {
        switchView(n: 1)
    }
    


}

