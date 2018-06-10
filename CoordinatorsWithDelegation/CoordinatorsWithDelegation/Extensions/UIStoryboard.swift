//
//  UIStoryboard.swift
//  CoordinatorTransitons
//
//  Created by Pavle Pesic on 5/18/18.
//  Copyright © 2018 Pavle Pesic. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    // MARK: - Vars & Lets
    
    static var first: UIStoryboard {
        return UIStoryboard.init(name: "First", bundle: nil)
    }
    
    static var auth: UIStoryboard {
        return UIStoryboard.init(name: "Auth", bundle: nil)
    }
    
    static var changePassword: UIStoryboard {
        return UIStoryboard.init(name: "ChangePassword", bundle: nil)
    }
    
    static var walktrough: UIStoryboard {
        return UIStoryboard.init(name: "Walktrough", bundle: nil)
    }
    
    static var profile: UIStoryboard {
        return UIStoryboard.init(name: "Profile", bundle: nil)
    }
    
}
