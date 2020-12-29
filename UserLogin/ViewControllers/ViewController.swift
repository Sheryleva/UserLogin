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
            username.isHidden = !username.isHidden
            password.isHidden = !password.isHidden
        } else {
            print(GloballyApplied.malfunctionaliy)
        }
    }
         
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        username.placeholder = "User Name"
        password.placeholder = "Pass Word"
        
        
        settingUpSideMenuNavigator()
        navigationItem.leftBarButtonItem?.title = "Click here"
        navigationItem.leftBarButtonItem?.tintColor = .black
    }
    
    fileprivate func settingUpSideMenuNavigator() {
        sideMenuNavigator = SideMenuNavigationController(rootViewController: MeinyoTeburuController.init())
        sideMenuNavigator?.leftSide = true
        sideMenuNavigator?.setNavigationBarHidden(true, animated: false)
        SideMenuManager.default.leftMenuNavigationController = sideMenuNavigator
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
    }
    
    
    @IBAction func username_entered(_ sender: UITextField) {
        
    }
    @IBAction func password_entered(_ sender: UITextField) {
        
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        guard let passwordEntered = password.text else {return}
        guard passwordEntered.count >= 8 else{
            let alert = UIAlertController.init(title: "Error!", message: "Password should have atleast 8 characters.", preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
            let ok = UIAlertAction.init(title: "Ok", style: .default) { (_) in
                self.password.text = ""
            }
            alert.addAction(ok)
            return
        }
        
        let sBoard = UIStoryboard(name: GloballyApplied.storyBoardName, bundle: nil)
        let destination = sBoard.instantiateViewController(withIdentifier: GloballyApplied.storyBoardID)
        navigationController?.pushViewController(destination, animated: true)
    }
    
    
}

