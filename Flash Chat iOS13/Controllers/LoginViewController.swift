//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        //Login user with email and passport with optional chaining
        if let email = emailTextfield.text, let password = passwordTextfield.text{
            
            Auth.auth().signIn(withEmail: email, password: password) { (authresult, error) in
                
                //If any error occurs, let me know by optional binding
                if let e = error{
                    
                    //Function
                    self.alerta(title: "Something went wrong", message: e.localizedDescription)
                    
                }else{
                    
                    //Navigate to the ChatViewController
                    self.performSegue(withIdentifier: "LoginToChat", sender: self)
                }
            }
        }
    }
    
    //Function with two inputs in oder to use them inside the registerPressed button
    func alerta(title: String, message: String){
        
        let alert = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true)
    }
    
}
