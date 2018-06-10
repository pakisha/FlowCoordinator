//
//  ChangePasswordStep1ViewController.swift
//  CoordinatorsWithDelegation
//
//  Created by Pavle Pesic on 6/9/18.
//  Copyright (c) 2018 Pavle Pesic. All rights reserved.
//

import UIKit

protocol ChangePasswordStep1ViewControllerProtocol: class {
    var onNextStep: (() -> Void)? { get set }
    var onBack: (() -> Void)? { get set }
}

class ChangePasswordStep1ViewController: UIViewController, ChangePasswordStep1ViewControllerProtocol {
    
    // MARK: - ChangePasswordStep1ViewControllerProtocol
    
    var onNextStep: (() -> Void)?
    var onBack: (() -> Void)?
    
    // MARK: - Vars & Lets
    
    var viewModel: ChangePasswordStep1ViewModelProtocol?
    
    // MARK: - Controller lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func back() {
        self.onBack?()
    }
    
    @IBAction func nextStep() {
        self.onNextStep?()
    }
    
}
