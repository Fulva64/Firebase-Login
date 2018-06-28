//
//  HomeViewController.swift
//  FirebaseLogin
//
//  Created by Giuseppe Sapienza on 05/07/16.
//  Copyright © 2016 Giuseppe Sapienza. All rights reserved.
//

//import UIKit
//import Firebase
//
//
//class HomeViewController: UIViewController {
//
//    @IBOutlet var lb_helloUsername: UILabel!
//    @IBOutlet var tf_updateUsername: UITextField!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        guard let currentUser = Auth.auth().currentUser else { return }
//
//        let ref = Database.database().reference()
//
//        ref.child("users").child(currentUser.uid).updateChildValues(
//            ["display_email" : currentUser.email!]
//        )
//
//        let name = currentUser.displayName ?? "Nil"
//        self.lb_helloUsername.text = "Hello, \(name)"
//
//    }
//
//    @IBAction func updateNow_clicked(sender: UIButton) {
//
//        guard let username = self.tf_updateUsername.text, !username.isEmpty else {
//            print("\n [Error] Write Username \n")
//            return
//        }
//
//        guard let currentUser = Auth.auth().currentUser else { return }
//
//        let changeRequest = currentUser.createProfileChangeRequest()
//        changeRequest.displayName = username
//
//        changeRequest.commitChanges { (error) in
//            guard error == nil else {
//                print(" \n \n Problem with ProfileChangeRequest \n \n   (\(error?.localizedDescription))")
//                return
//            }
//
//            print("\n \n ProfileChangeRequest OK \n\n")
//
//
//            self.lb_helloUsername.text = "Hello, \(currentUser.displayName!)"
//
//            let ref = Database.database().reference()
//            ref.child("users").child(currentUser.uid).updateChildValues(
//                ["name" : currentUser.displayName!]
//            )
//        }
//
//    }
//
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//
//
//
//}
