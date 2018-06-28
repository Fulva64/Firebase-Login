//
//  LoginViewController.swift
//  FirebaseLogin
//
//  Created by Giuseppe Sapienza on 05/07/16.
//  Copyright © 2016 Giuseppe Sapienza. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class LoginViewController: UIViewController {

    
    @IBOutlet var tf_email: UITextField!
    @IBOutlet var tf_password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func classicLogin_clicked(_ sender: UIButton) {
        
        guard let email = self.tf_email.text, !email.isEmpty else {
            print("\n [Error] Write Username \n")
            return
        }
        
        guard let password = self.tf_password.text, !password.isEmpty else {
            print("\n [Error] Write Password \n")
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password, completion: { (user, error) in
            
            guard error == nil else {
                print(" \n ERRORE Non puoi Entrare \n   Codice Errore: \(error!._code, error!.localizedDescription) \n")
                
                let alert = ErrorMessageView.createAlert(title: "Non puoi Entrare!", message: "Codice errore: \(error!._code, error!.localizedDescription)")
                self.show(alert, sender: nil)
                
                return
            }
            
            //print("\n Welcome \(user!.email!)")
            self.performSegue(withIdentifier: "segueToHome", sender: nil)
            
        })

     }

    
    @IBAction func signUp_clicked(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueToSignup", sender: nil)
    }


}
