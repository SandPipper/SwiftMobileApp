//
//  LoginViewController.swift
//  FoodTaskerMobile
//
//  Created by Alexander Kulyk on 04.08.2018.
//  Copyright © 2018 Alexander Kulyk. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var bLogin: UIButton!
    var fbLoginSuccess = false

    @IBOutlet weak var bLogout: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (FBSDKAccessToken.current() != nil) {
            bLogout.isHidden = false
            print("User current: **********************")
            print(User.currentUser)
            FBManager.getFBUserData(
                completionHandler: {
                    self.bLogin.setTitle("Continue as \(User.currentUser.name!)", for: .normal)
//                    self.bLogin.sizeToFit()
                }
            )
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if (FBSDKAccessToken.current() != nil && fbLoginSuccess == true) {
            performSegue(withIdentifier: "CustomerView", sender: self)
        }
    }
    
    @IBAction func facebookLogout(_ sender: Any) {
        FBManager.shared.logOut()
        User.currentUser.resetInfo()
        
        self.bLogout.isHidden = true
        self.bLogin.setTitle("Login with Facebook", for: .normal)
    }
    
    @IBAction func facebookLogin(_ sender: Any) {
        
        if (FBSDKAccessToken.current() != nil) {
            fbLoginSuccess = true
            self.viewDidAppear(true)
        } else {
            FBManager.shared.logIn(
                withReadPermissions: ["public_profile", "email"],
                from: self,
                handler: { (result, error) in
                    if (error == nil) {
                        
                        FBManager.getFBUserData(
                            completionHandler: {
                                self.fbLoginSuccess = true
                                self.viewDidAppear(true)
                            })
                    }
            })
        }
    }
}
