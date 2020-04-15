//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Animation()
       
    }
    
    
    
    func Animation() {
        //Empty titlelabel
        titleLabel.text = ""
        
        //Variable for separating each latter
        var characterIndex = 0.0
        
        //Constant
        let titleText = K.appName
        
        //For loop
        for letter in titleText {
            //Using a timer to display each letter at specific time
            Timer.scheduledTimer(withTimeInterval: 0.1 * characterIndex, repeats: false) { (timer) in
                //Add every letters to the titleLabel
                self.titleLabel.text?.append(letter)
            }
            characterIndex += 1
        }
    }
}
