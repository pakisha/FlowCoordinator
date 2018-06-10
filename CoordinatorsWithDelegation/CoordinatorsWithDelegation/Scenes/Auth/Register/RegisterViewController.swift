//
//  RegisterViewController.swift
//  CoordinatorsWithDelegation
//
//  Created by Pavle Pesic on 6/9/18.
//  Copyright (c) 2018 Pavle Pesic. All rights reserved.
//

import UIKit

protocol RegisterViewControllerProtocol: class {
    var onRegister: (() -> Void)? { get set }
    var onBack: (() -> Void)? { get set }
}

class RegisterViewController: UIViewController, RegisterViewControllerProtocol {
    
    // MARK: - RegisterViewControllerProtocol
    
    var onRegister: (() -> Void)?
    var onBack: (() -> Void)?
    
    // MARK: - Vars & Lets
    
    var viewModel: RegisterViewModelProtocol?
    
    // MARK: - Controller lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func register() {
        self.onRegister?()
    }
    
    @IBAction func back() {
        self.onBack?()
    }
    
}
