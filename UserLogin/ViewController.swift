//
//  ViewController.swift
//  UserLogin
//
//  Created by Sheryl Evangelene Pulikandala on 11/12/20.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func username_entered(_ sender: UITextField) {
        
    }
    
    @IBAction func password_entered(_ sender: UITextField) {
        
    }
    
    

    @IBAction func buttonClicked(_ sender: UIButton) {
        
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string.rangeOfCharacter(from: NSCharacterSet.decimalDigits.inverted) == nil{
                let len = (textField.text?.count)! + string.count
                if len <= 5 {
                    return true
                }
            }
            return false
    }
    

}

