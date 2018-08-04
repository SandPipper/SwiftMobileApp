//
//  APIManager.swift
//  FoodTaskerMobile
//
//  Created by Alexander Kulyk on 04.08.2018.
//  Copyright © 2018 Alexander Kulyk. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import FBSDKLoginKit

class APIManager {
    
    static let shared = APIManager()
    
    let baseURL = NSURL(string: "https://thawing-falls-38803.herokuapp.com/")
    
    var accessToken = ""
    var refreshToken = ""
    var expired = Date()
    
    // API to login an user
    func login(userType: String, completionHandler: @escaping (NSError?) -> Void) {
        
        let path = "api/social/convert-token"
        let url = ""
    }
    
    // API to logout an user out
    func logout(completionHandler: @escaping (NSError?) -> Void) {
        
    }
}
