//
//  ImageViewController.swift
//  FirebaseLogin
//
//  Created by Macbook Pro Ventiquattro on 28/06/18.
//  Copyright © 2018 Giuseppe Sapienza. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase
import FirebaseCore
import FirebaseStorage

class ImageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func cambiaImmagine(_ sender: UIButton) {
        
    }
    
    @IBAction func cambiaMail(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueToMail", sender: self)
    }
    
    fileprivate func saveUserImageIntoFirebase() {
        Storage.storage().reference()
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
