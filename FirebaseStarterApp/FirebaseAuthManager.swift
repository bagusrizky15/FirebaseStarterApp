//
//  FirebaseAuthManager.swift
//  FirebaseStarterApp
//
//  Created by BBPDEV on 03/08/23.
//  Copyright © 2023 Instamobile. All rights reserved.
//

import FirebaseAuth
import FirebaseCore
import GoogleSignIn
import UIKit

class FirebaseAuthManager {
    func createUser(email: String, password: String, completionBlock: @escaping (_ success: Bool) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) {(authResult, error) in
            if let user = authResult?.user {
                print(user.email)
                completionBlock(true)
            } else {
                completionBlock(false)
            }
        }
    }
    
    func signIn(email: String, pass: String, completionBlock: @escaping (_ success: Bool) -> Void) {
        Auth.auth().signIn(withEmail: email, password: pass) { (result, error) in
            if let user = result?.user {
                print(user)
                completionBlock(true)
            } else {
                completionBlock(false)
            }
        }
    }
}
