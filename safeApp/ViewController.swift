//
//  ViewController.swift
//  safeApp
//
//  Created by Chinmay Patel on 5/15/18.
//  Copyright © 2018 Chinmay Patel. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var segmentControlmy: UISegmentedControl!
    
    @IBOutlet weak var LoginButton: UIButton!
    @IBAction func LoginButtonAction(_ sender: UIButton) {
       
        if emailText.text != "" && passwordText.text != ""
        {
            if segmentControlmy.selectedSegmentIndex == 0 // Login User
            {
                Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!, completion: { (user, error) in
                    if user != nil
                    {
                        // Sign In Successfully
                        // print("SUCCESS")
                        self.performSegue(withIdentifier: "sague", sender: self)
                    }
                    else
                    {
                        if let myError = error?.localizedDescription
                        {
                            print(myError)
                        }
                        else
                        {
                            print("Error")
                        }
                    }
                })
            }
            else // Sign up User
            {
                Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!, completion: { (user, error) in
                    if user != nil
                    {
                       // print("SUCCESS")
                        self.performSegue(withIdentifier: "sague", sender: self)
                    }
                    else
                    {
                        if let myError = error?.localizedDescription
                        {
                            print(myError)
                        }
                        else
                        {
                            print("Error")
                        }
                    }
                })
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

