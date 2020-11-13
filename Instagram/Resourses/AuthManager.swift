//
//  AuthManager.swift
//  Instagram
//
//  Created by Игорь Дикань on 12.11.2020.
//  Copyright © 2020 Игорь Дикань. All rights reserved.
//

import FirebaseAuth

public class AuthManager {
    
    static let shared = AuthManager()
    
    //MARK: - Public
    
    public func registerNewUser(username: String, email: String, password: String) {
        /*
         - Check 
         */
    }
    
    public func loginUser(username: String?, email: String?, password: String, complition: @escaping (Bool) -> Void) {
        if let email = email {
            //email log in
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                guard authResult != nil, error == nil else {
                    complition(false)
                    return
                }
                
                complition(true)
            }
        } else if let username = username {
            //username log in
            print(username)
        }
    }
    
}
