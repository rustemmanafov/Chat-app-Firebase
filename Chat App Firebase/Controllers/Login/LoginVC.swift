//
//  LoginVC.swift
//  Chat App Firebase
//
//  Created by Rustem Manafov on 21.03.23.
//

import UIKit

class LoginVC: UIViewController {
    
    private let scroolView: UIScrollView = {
       let scroolView = UIScrollView()
        scroolView.clipsToBounds = true
        return scroolView
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let emailField: UITextField = {
       let field = UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = "Email Address..."
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .white
        field.attributedPlaceholder = NSAttributedString(
            string: "Email Address...",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        return field
    }()
    
    private let passwordField: UITextField = {
       let field = UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .done
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = "Password..."
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
        field.leftViewMode = .always
        field.isSecureTextEntry = true
        field.backgroundColor = .white
        
        field.attributedPlaceholder = NSAttributedString(
            string: "Password...",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        return field
    }()
    
    private let loginButton: UIButton = {
       let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = .link
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Log In"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]

        view.backgroundColor = .white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Register", style: .done, target: self, action: #selector(didTapRegister))
        
        view.addSubview(scroolView)
        scroolView.addSubview(imageView)
        scroolView.addSubview(emailField)
        scroolView.addSubview(passwordField)
        scroolView.addSubview(loginButton)


        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        scroolView.frame = view.bounds
        
        let size = scroolView.width/3
        imageView.frame = CGRect(x: (scroolView.width-size)/2, y: 20, width: size, height: size)
        
        emailField.frame = CGRect(x: 30, y: imageView.bottom + 10, width: scroolView.width-60, height: 52)
        
        passwordField.frame = CGRect(x: 30, y: emailField.bottom + 10, width: scroolView.width-60, height: 52)
        
        loginButton.frame = CGRect(x: 30, y: passwordField.bottom + 10, width: scroolView.width-60, height: 52)



        
        
    }
    
    @objc func didTapRegister() {
        let vc = RegisterVC()
        vc.title = "Create Account"
        navigationController?.pushViewController(vc, animated: true)

        
    }
    

   

}