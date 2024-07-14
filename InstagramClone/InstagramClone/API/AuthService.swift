//
//  AuthService.swift
//  InstagramClone
//
//  Created by Khusrav Safiev on 7/13/24.
//

import UIKit
import Firebase

struct AuthCredentials {
    let emaile: String
    let password: String
    let fullname: String
    let username: String
    let profileImage: UIImage
}

struct AuthService {
    static func registerUser(withCredential credentials: AuthCredentials) {
        print("DEBUG: Credentials are \(credentials)")
    }
}
