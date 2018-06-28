//
//  SignupViewController.swift
//  FirebaseLogin
//
//  Created by Giuseppe Sapienza on 05/07/16.
//  Copyright © 2016 Giuseppe Sapienza. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import Firebase
import FirebaseCore

class SignupViewController: UIViewController {
    
    @IBOutlet var tf_email: UITextField!
    @IBOutlet var tf_password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func signup_clicked(_ sender: UIButton) {
        guard let email = self.tf_email.text, !email.isEmpty else {
            print("\n [Error] Write Username \n")
            return
        }
        
        guard let password = self.tf_password.text, !password.isEmpty else {
            print("\n [Error] Write Password \n")
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password, completion: { (user, error) in
            guard error == nil else {
                print(" \n [ERROR] Can't create an Account \n   withError: \(error!._code, error!.localizedDescription) \n")
                
                let alert = ErrorMessageView.createAlert(title: "Can't create an Account!", message: "withError: \(error!._code, error!.localizedDescription)")
                self.show(alert, sender: nil)
                
                return
            }
            
            //print("\n Welcome \(user!.email!)")
            self.performSegue(withIdentifier: "segueToHome", sender: nil)

        })
        
    }

    @IBAction func backToLogin_clicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
