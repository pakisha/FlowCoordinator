//
//  BViewController.swift
//  CoordinatorsWithDelegation
//
//  Created by Pavle Pesic on 5/28/18.
//  Copyright (c) 2018 Pavle Pesic. All rights reserved.
//

import UIKit

protocol BViewControllerProtocol: class {
    var onBack: (() -> Void)? { get set }
    var onLogout: (() -> Void)? { get set }
}

protocol BViewControllerDelegate: class {
    func didSelectDate(date: Date)
}

class BViewController: UIViewController, BViewControllerProtocol {
    
    // MARK: - BViewControllerProtocol
    
    var onBack: (() -> Void)?
    var onLogout: (() -> Void)?
    
    // MARK: - Vars & Lets
    
    var viewModel: BViewModelProtocol?
    
    // MARK: - Controller lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func back() {
        self.onBack?()
    }
    
    @IBAction func logout() {
        self.onLogout?()
    }
    
}
