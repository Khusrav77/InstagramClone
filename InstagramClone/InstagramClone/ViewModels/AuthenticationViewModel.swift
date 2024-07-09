//
//  AuthenticationViewModel.swift
//  InstagramClone
//
//  Created by Khusrav Safiev on 7/8/24.
//

import UIKit

protocol FormViewModel {
    func updateForm()
}

protocol AuthenticationViewModel {
    var formIsValid: Bool { get }
    var buttonBackgroundColor: UIColor { get }
    var buttonTitleColor: UIColor { get }
}

struct LoginViewModel: AuthenticationViewModel {
    var email: String?
    var password: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false
    }
    
    var buttonBackgroundColor: UIColor {
        return formIsValid ? .blue : .purple
    }
    
    var buttonTitleColor: UIColor {
        return formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
}

struct RegistrationViewModel: AuthenticationViewModel {
    var email: String?
    var password: String?
    var fullName: String?
    var userName: String?
    
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false
        && fullName?.isEmpty == false && userName?.isEmpty == false
    }
    
    var buttonBackgroundColor: UIColor {
        return formIsValid ? .blue : .purple
    }
    
    var buttonTitleColor: UIColor {
        return formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
    
    
}
