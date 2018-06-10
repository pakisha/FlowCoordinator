//
//  ChangePasswordStep2ViewController.swift
//  CoordinatorsWithDelegation
//
//  Created by Pavle Pesic on 6/9/18.
//  Copyright (c) 2018 Pavle Pesic. All rights reserved.
//

import UIKit

protocol ChangePasswordStep2ViewControllerProtocol: class {
    var onResetPassword: (() -> Void)? { get set }
    var onBack: (() -> Void)? { get set }
}

class ChangePasswordStep2ViewController: UIViewController, ChangePasswordStep2ViewControllerProtocol {
    
    // MARK: - ChangePasswordStep2ViewControllerProtocol
    
    var onResetPassword: (() -> Void)?
    var onBack: (() -> Void)?
    
    // MARK: - Vars & Lets
    
    var viewModel: ChangePasswordStep2ViewModelProtocol?
    
    // MARK: - Controller lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func back() {
        self.onBack?()
    }
    
    @IBAction func resetPassword() {
        self.onResetPassword?()
    }
    
}
