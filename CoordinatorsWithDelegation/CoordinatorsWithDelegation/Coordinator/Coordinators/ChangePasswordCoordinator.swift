//
//  ChangePasswordCoordinator.swift
//  CoordinatorsWithDelegation
//
//  Created by Pavle Pesic on 6/9/18.
//  Copyright © 2018 Pavle Pesic. All rights reserved.
//

import Foundation

final class ChangePasswordCoordinator: BaseCoordinator, CoordinatorFinishOutput {
    
    // MARK: - CoordinatorFinishOutput
    
    var finishFlow: (() -> Void)?
    
    // MARK: - Vars & Lets
    
    private let router: RouterProtocol
    private let viewControllerFactory: ViewControllerFactory
    
    // MARK: - Private methods
    
    private func showChangePasswordStep1() {
        let changePasswordStep1VC = self.viewControllerFactory.instantiateChangePasswordStep1ViewController()
        changePasswordStep1VC.onBack = { [unowned self] in
            self.finishFlow?()
        }
        changePasswordStep1VC.onNextStep = { [unowned self] in
            self.showChangePasswordStep2()
        }
        self.router.push(changePasswordStep1VC)
    }
    
    private func showChangePasswordStep2() {
        let changePasswordStep2VC = self.viewControllerFactory.instantiateChangePasswordStep2ViewController()
        changePasswordStep2VC.onBack = { [unowned self] in
            self.router.popModule()
        }
        changePasswordStep2VC.onResetPassword = { [unowned self] in
            self.finishFlow?()
        }
        self.router.push(changePasswordStep2VC)
    }
    
    // MARK: - Coordinator
    
    override func start() {
        self.showChangePasswordStep1()
    }
    
    // MARK: - Init
    
    init(router: RouterProtocol, viewControllerFactory: ViewControllerFactory) {
        self.router = router
        self.viewControllerFactory = viewControllerFactory
    }
    
}
