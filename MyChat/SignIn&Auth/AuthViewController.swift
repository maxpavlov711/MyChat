//
//  ViewController.swift
//  MyChat
//
//  Created by Max Pavlov on 25.04.22.
//

import UIKit

class AuthViewController: UIViewController {
    
    let logoImageView = UIImageView(image: UIImage(named: "Logo"), contentMode: .scaleAspectFit)
    
    let googleLabel = UILabel(text: "Get started with")
    let emailLabel = UILabel(text: "Or sign up with")
    let alreadyOnboardLabel = UILabel(text: "Already onboard?")
    
    let googleButton = UIButton(title: "Google", titleColor: .black, backgroundColor: .white, isShodow: true)
    let emailButton = UIButton(title: "Email", titleColor: .white, backgroundColor: .buttonDark())
    let loginButton = UIButton(title: "Login", titleColor: .buttonRed(), backgroundColor: .white, isShodow: true)
    
    let signUpVC = SignUpViewController()
    let loginVC = LoginViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        googleButton.customizeGoogleButton()
        view.backgroundColor = .white
        setupConstraints()
        
        emailButton.addTarget(self, action: #selector(emailButtonTapped), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        
        signUpVC.delegate = self
        loginVC.delegate = self
    }
    
    @objc private func emailButtonTapped() {
        print(#function)
        present(signUpVC, animated: true)
    }
    
    @objc private func loginButtonTapped() {
        print(#function)
        present(loginVC, animated: true)
    }
}

// MARK: - Setup Constraints
extension AuthViewController{
    private func setupConstraints() {
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let googleView = ButtonFormView(label: googleLabel, button: googleButton)
        let emailView = ButtonFormView(label: emailLabel, button: emailButton)
        let loginView = ButtonFormView(label: alreadyOnboardLabel, button: loginButton)
        
        let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView], axix: .vertical, spacing: 40)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(logoImageView)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 160),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
}

extension AuthViewController: AuthNavigationDelegate {
    func toLoginVC() {
        present(loginVC, animated: true)
    }
    
    func toSingUpVC() {
        present(signUpVC, animated: true)
    }
}

// MARK: - SwiftUI
import SwiftUI

struct AuthVCProvider: PreviewProvider {
    static var previews: some View {
        Group {
            ConternerView().edgesIgnoringSafeArea(.all).previewInterfaceOrientation(.portrait)
        }
    }
    
    struct ConternerView: UIViewControllerRepresentable {
        
        let viewController = AuthViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}

