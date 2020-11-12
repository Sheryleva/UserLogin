//
//  ViewController.swift
//  UserLogin
//
//  Created by Sheryl Evangelene Pulikandala on 11/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        username.placeholder = "User Name"
        password.placeholder = "Pass Word"
    }
    
    @IBAction func username_entered(_ sender: UITextField) {
        
    }
    
    @IBAction func password_entered(_ sender: UITextField) {
        
    }
    
    
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        let sBoard = UIStoryboard(name: GloballyApplied.storyBoardName, bundle: nil)
        let destination = sBoard.instantiateViewController(withIdentifier: GloballyApplied.storyBoardID)
        
        guard let usernameString = username.text else { return }
        guard let passwordString = password.text else { return }
        
        if passwordString.count >= 6 && usernameString.isValidEmailOrNaw {
            navigationController?.pushViewController(destination, animated: true)
        } else {
            print("password or email not valid")
        }
    } 
}

