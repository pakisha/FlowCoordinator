//
//  FirstCoordinator.swift
//  CoordinatorTransitons
//
//  Created by Pavle Pesic on 5/18/18.
//  Copyright © 2018 Pavle Pesic. All rights reserved.
//

final class MainCoordinator: BaseCoordinator, CoordinatorFinishOutput {

    // MARK: - CoordinatorFinishOutput
    
    var finishFlow: (() -> Void)?
    
    // MARK: - Vars & Lets
    
    private let router: RouterProtocol
    private let coordinatorFactory: CoordinatorFactoryProtocol
    private let viewControllerFactory: ViewControllerFactory
    
    // MARK: - Private methods
    
    private func showAViewController() {
        let aVC = self.viewControllerFactory.instantiateAViewController()
        aVC.onGoToB = { [unowned self] in
            self.showBViewController()
        }
        aVC.onGoToProfile = { [unowned self] in
            self.showProfile()
        }
        self.router.setRootModule(aVC, hideBar: true)
    }
    
    private func showBViewController() {
        let bVC = self.viewControllerFactory.instantiateBViewController()
        bVC.onBack = { [unowned self] in
            self.router.popModule()
        }
        bVC.onLogout = { [unowned self] in
            self.finishFlow?()
        }
        self.router.push(bVC)
    }
    
    private func showProfile() {
        let coordinator = self.coordinatorFactory.makeProfileCoordinatorBox(router: self.router, coordinatorFactory: self.coordinatorFactory, viewControllerFactory: self.viewControllerFactory)
        coordinator.finishFlow = { [unowned self, unowned coordinator] in
            self.removeDependency(coordinator)
            self.router.popModule()
        }
        self.addDependency(coordinator)
        coordinator.start()
    }
    
    // MARK: - Coordinator
    
    override func start() {
        self.showAViewController()
    }
    
    // MARK: - Init
    
    init(router: RouterProtocol, coordinatorFactory: CoordinatorFactoryProtocol, viewControllerFactory: ViewControllerFactory) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
        self.viewControllerFactory = viewControllerFactory
    }
    
}
