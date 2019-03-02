//
//  LoginViewController.swift
//  Parse That Gram
//
//  Created by Judith Ramirez on 2/25/19.
//  Copyright © 2019 Judith Ramirez. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordfield: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSignIn(_ sender: Any) {
        let username = usernameField.text
        let password = passwordfield.text
        
        PFUser.logInWithUsername(inBackground: username!, password: password!){
            (user, error) in
            
            if user != nil{
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                let alert = UIAlertController(title: "", message: "\(error?.localizedDescription)", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))

                self.present(alert,animated: true)
                //self.dismiss(animated: true, completion: nil)
                //print("Error: \(error?.localizedDescription)")
            }
        }
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordfield.text
        
        user.signUpInBackground{(success, error) in
            if(success){
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                let alert = UIAlertController(title: "", message: "\(error?.localizedDescription)", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))

                self.present(alert,animated: true)
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
