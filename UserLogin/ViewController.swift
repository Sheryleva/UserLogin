//
//  ViewController.swift
//  UserLogin
//
//  Created by Sheryl Evangelene Pulikandala on 11/12/20.
//

import UIKit
import SideMenu

class ViewController: UIViewController, UITextFieldDelegate {
    
    var sideMenuNavigator: SideMenuNavigationController?
    
    @IBAction func menuPoppingOut(_ sender: UIBarButtonItem) {
        if let sideMenuNavigator = sideMenuNavigator {
            present(sideMenuNavigator, animated: true)
        } else {
            print("sideMenuNavigator malfunctioning")
        }
    }
        
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        username.placeholder = "User Name"
        password.placeholder = "Pass Word"
        
    //    settingUpSideMenuNavigator()
        navigationItem.leftBarButtonItem?.title = "Menu"
    }
    
//    fileprivate func settingUpSideMenuNavigator() {
//        sideMenuNavigator = SideMenuNavigationController(rootViewController: ViewController())
//        sideMenuNavigator?.leftSide = true
//        sideMenuNavigator?.setNavigationBarHidden(true, animated: false)
//        SideMenuManager.default.leftMenuNavigationController = sideMenuNavigator
//        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
//    }
    
    
    @IBAction func username_entered(_ sender: UITextField) {
        
    }
    @IBAction func password_entered(_ sender: UITextField) {
        
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        let sBoard = UIStoryboard(name: GloballyApplied.storyBoardName, bundle: nil)
        let destination = sBoard.instantiateViewController(withIdentifier: GloballyApplied.storyBoardID)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //Changes by Sheryl
        if string.rangeOfCharacter(from: NSCharacterSet.decimalDigits.inverted) == nil{
                let len = (textField.text?.count)! + string.count
                if len <= 6 {
                    return true
                }
            }
            return false
    }
    


}

