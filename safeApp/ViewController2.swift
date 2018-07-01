//
//  ViewController2.swift
//  safeApp
//
//  Created by Chinmay Patel on 5/15/18.
//  Copyright © 2018 Chinmay Patel. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController2: UIViewController {

    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBAction func LogoutAction(_ sender: UIButton) {
        try! Auth.auth().signOut()
        performSegue(withIdentifier: "sague2", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print(Auth.auth().currentUser?.email)

        emailLabel.text? = (Auth.auth().currentUser?.email)!
        // Do any additional setup after loading the view.
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
