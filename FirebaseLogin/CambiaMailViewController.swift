//
//  CambiaMailViewController.swift
//  FirebaseLogin
//
//  Created by Macbook Pro Ventiquattro on 28/06/18.
//  Copyright © 2018 Giuseppe Sapienza. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import Firebase
import FirebaseCore
import FirebaseStorage


class CambiaMailViewController: UIViewController {

    @IBOutlet weak var mailNuova: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let currentUser = Auth.auth().currentUser else { return }
        let ref = Database.database().reference()
    
    }
    
    @IBAction func cambiaMail(_ sender: UIButton) {
        
    }
        
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
