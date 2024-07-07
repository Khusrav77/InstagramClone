//
//  LoginController.swift
//  InstagramClone
//
//  Created by Khusrav Safiev on 7/6/24.
//

import UIKit

class LoginController: UIViewController {
    
    // MARK: - PROPERTIES
    
    private let iconImage: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "Instagram_logo_white"))
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    private let emailTextField: UITextField = {
        let tf = CustomTexField(placeholder: "Email")
        tf.keyboardType = .emailAddress
        
        return tf
    }()
    
    private let passwordTexField: UITextField = {
        let tf = CustomTexField(placeholder: "Password")
        
        tf.isSecureTextEntry = true
        return tf
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 5
        button.setHeight(50)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    private let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.attributeTitle(firstPart: "Forgot you password?", secondPart: "Get help signing in.")
        return button
    }()
    
    private let dontHaveAccountButton: UIButton = {
        let button = UIButton(type: .system)
        button.attributeTitle(firstPart: "Don't have an account?", secondPart: "Sign Up")
        return button
    }()
    
    
    // MARK: - LIFECYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    // MARK: - HELPERS
    
    func configureUI() {
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemBlue.cgColor]
        gradient.locations = [0, 1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
        view.addSubview(iconImage)
        iconImage.centerX(inView: view)
        iconImage.setDimensions(height: 80, width: 120)
        iconImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 32)
        
        let stack = UIStackView(arrangedSubviews: [emailTextField, passwordTexField, loginButton,                                   forgotPasswordButton])
        
        stack.axis = .vertical
        stack.spacing = 20
        
        view.addSubview(stack)
        stack.anchor(top: iconImage.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor,                    paddingTop: 32, paddingLeft: 32, paddingRight: 32)
        
        view.addSubview(dontHaveAccountButton)
        dontHaveAccountButton.centerX(inView: view)
        dontHaveAccountButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor)
    }
}
