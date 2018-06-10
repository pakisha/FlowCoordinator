//
//  AViewController.swift
//  CoordinatorsWithDelegation
//
//  Created by Pavle Pesic on 5/28/18.
//  Copyright (c) 2018 Pavle Pesic. All rights reserved.
//

import UIKit

protocol AViewControllerProtocol: BaseViewControllerProtocol {
    var onGoToB: (() -> Void)? { get set }
    var onGoToProfile: (() -> Void)? { get set }
}

class AViewController: UIViewController, AViewControllerProtocol {
    
    // MARK: - AViewControllerProtocol
    
    var onGoToB: (() -> Void)?
    var onGoToProfile: (() -> Void)?
    
    // MARK: - Vars & Lets
    
    var viewModel: AViewModelProtocol?
    
    // MARK: - Controller lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func goToB() {
        self.onGoToB?()
    }
    
    @IBAction func profile() {
        self.onGoToProfile?()
    }
    
}
