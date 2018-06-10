//
//  WalktroughCoordinator.swift
//  CoordinatorsWithDelegation
//
//  Created by Pavle Pesic on 6/9/18.
//  Copyright © 2018 Pavle Pesic. All rights reserved.
//

import Foundation

final class WalktroughCoordinator: BaseCoordinator, CoordinatorFinishOutput {
    
    // MARK: - CoordinatorFinishOutput
    
    var finishFlow: (() -> Void)?
    
    // MARK: - Vars & Lets
    
    private let router: RouterProtocol
    private let viewControllerFactory: ViewControllerFactory
    
    // MARK: - Private methods
    
    private func showWalktroughViewController() {
        let walktroughVC = self.viewControllerFactory.instantiateWalktroughViewController()
        walktroughVC.onFinish = { [unowned self] in
            self.finishFlow?()
        }
        self.router.setRootModule(walktroughVC, hideBar: true)
    }
    
    // MARK: - Coordinator
    
    override func start() {
        self.showWalktroughViewController()
    }
    
    // MARK: - Init
    
    init(router: RouterProtocol, viewControllerFactory: ViewControllerFactory) {
        self.router = router
        self.viewControllerFactory = viewControllerFactory
    }
    
}
