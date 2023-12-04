//
//  SignInViewController.swift
//  PawPatrol
//
//  Created by Aimeric on 12/04/23.
//

import Foundation
import UIKit

class SignInScreenViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            view.backgroundColor = .clear
            
            let blurEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            let blurView = UIVisualEffectView(effect: blurEffect)
            blurView.frame = view.bounds
            view.addSubview(blurView)
            
            let colorView = UIView()
            colorView.backgroundColor = UIColor(red: 0, green: 0.5, blue: 1, alpha: 0.3) // Customize the color here
            colorView.frame = view.bounds
            blurView.contentView.addSubview(colorView)
            
            let titleLabel = UILabel()
            titleLabel.text = "Sign Up"
            titleLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
            titleLabel.textColor = .white
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(titleLabel)
            
            NSLayoutConstraint.activate([
                titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100)
            ])
            
            // Add other UI elements and constraints as needed
            
            // Example of adding a text field with an envelope logo
            let emailTextField = UITextField()
            emailTextField.placeholder = "Email"
            emailTextField.borderStyle = .roundedRect
            emailTextField.leftViewMode = .always
            let envelopeImageView = UIImageView(image: UIImage(systemName: "envelope"))
            envelopeImageView.tintColor = UIColor.black // Set the color to secondary system color
            emailTextField.leftView = envelopeImageView
            emailTextField.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(emailTextField)
            
            NSLayoutConstraint.activate([
                emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
                emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
                emailTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50)
            ])
            
            // Example of adding a segmentation line inside the text field
            let emailSeparatorView = UIView()
            emailSeparatorView.backgroundColor = .black
            emailSeparatorView.translatesAutoresizingMaskIntoConstraints = false
            emailTextField.addSubview(emailSeparatorView)
            
            NSLayoutConstraint.activate([
                emailSeparatorView.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
                emailSeparatorView.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
                emailSeparatorView.bottomAnchor.constraint(equalTo: emailTextField.bottomAnchor),
                emailSeparatorView.heightAnchor.constraint(equalToConstant: 1)
            ])
            
            // Example of adding a password field with an envelope logo and a segmentation line
            let passwordTextField = UITextField()
            passwordTextField.placeholder = "Password"
            passwordTextField.borderStyle = .roundedRect
            passwordTextField.leftViewMode = .always
            passwordTextField.leftView = UIImageView(image: UIImage(systemName: "lock"))
            passwordTextField.isSecureTextEntry = true
            passwordTextField.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(passwordTextField)
            
            NSLayoutConstraint.activate([
                passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
                passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
                passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20)
            ])
            
            let passwordSeparatorView = UIView()
            passwordSeparatorView.backgroundColor = .black
            passwordSeparatorView.translatesAutoresizingMaskIntoConstraints = false
            passwordTextField.addSubview(passwordSeparatorView)
            
            NSLayoutConstraint.activate([
                passwordSeparatorView.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
                passwordSeparatorView.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
                passwordSeparatorView.bottomAnchor.constraint(equalTo: passwordTextField.bottomAnchor),
                passwordSeparatorView.heightAnchor.constraint(equalToConstant: 1)
            ])
            
            // Example of adding a button
            let signUpButton = UIButton(type: .system)
            signUpButton.setTitle("Sign Up", for: .normal)
            signUpButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
            signUpButton.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(signUpButton)
            
            NSLayoutConstraint.activate([
                signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                signUpButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20)
            ])
        }
        
        @objc func signUpButtonTapped() {
            // Implement sign-up button action
        }
    }

