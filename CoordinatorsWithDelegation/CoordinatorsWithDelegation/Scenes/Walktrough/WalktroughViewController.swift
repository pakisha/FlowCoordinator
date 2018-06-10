//
//  WalktroughViewController.swift
//  CoordinatorsWithDelegation
//
//  Created by Pavle Pesic on 6/9/18.
//  Copyright (c) 2018 Pavle Pesic. All rights reserved.
//

import UIKit

protocol WalktroughViewControllerProtocol: class {
    var onFinish: (() -> Void)? { get set }
}

class WalktroughViewController: UIViewController, WalktroughViewControllerProtocol {
    
    // MARK: - WalktroughViewControllerProtocol
    
    var onFinish: (() -> Void)?
    
    // MARK: - Vars & Lets
    
    var viewModel: WalktroughViewModelProtocol?
    
    // MARK: - Controller lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func finish() {
        self.onFinish?()
    }
    
}
