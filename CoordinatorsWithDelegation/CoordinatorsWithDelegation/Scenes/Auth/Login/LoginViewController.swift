//
//  LoginViewController.swift
//  CoordinatorsWithDelegation
//
//  Created by Pavle Pesic on 6/9/18.
//  Copyright (c) 2018 Pavle Pesic. All rights reserved.
//

import UIKit

protocol LoginViewControllerProtocol: class {
    var onLogin: (() -> Void)? { get set }
    var onRegister: (() -> Void)? { get set }
    var onChangePassword: (() -> Void)? { get set }
}

class LoginViewController: UIViewController, LoginViewControllerProtocol {
    
    // MARK: - LoginViewControllerProtocol
    
    var onLogin: (() -> Void)?
    var onRegister: (() -> Void)?
    var onChangePassword: (() -> Void)?
    
    // MARK: - Vars & Lets
    
    var viewModel: LoginViewModelProtocol?
    
    // MARK: - Controller lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func login() {
        self.onLogin?()
    }
    
    @IBAction func register() {
        self.onRegister?()
    }
    
    @IBAction func forgetPassword() {
        self.onChangePassword?()
    }
    
}
