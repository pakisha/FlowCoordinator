//
//  ProfileViewController.swift
//  CoordinatorsWithDelegation
//
//  Created by Pavle Pesic on 6/9/18.
//  Copyright (c) 2018 Pavle Pesic. All rights reserved.
//

import UIKit

protocol ProfileViewControllerProtocol: class {
    var onBack: (() -> Void)? { get set }
    var onChangePassword: (() -> Void)? { get set }
    
}

class ProfileViewController: UIViewController, ProfileViewControllerProtocol {
    
    // MARK: - ProfileViewControllerProtocol
    
    var onBack: (() -> Void)?
    var onChangePassword: (() -> Void)?
    
    // MARK: - Vars & Lets
    
    var viewModel: ProfileViewModelProtocol?
    
    // MARK: - Controller lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func back() {
        self.onBack?()
    }
    
    @IBAction func changePassword() {
        self.onChangePassword?()
    }
    
}
