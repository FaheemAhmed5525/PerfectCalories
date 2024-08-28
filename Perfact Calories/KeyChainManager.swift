//
//  KeyChainManager.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 20/08/2024.
//

import Foundation
import KeychainAccess

class KeyChainManager {
    var user: User
    
    init(user: User) {
        self.user = user
    }
    
    
    ///funtion check if the user exist, if true, is loads the object, else returns false
    public func loadUser(name: String)-> Bool {
            ///The functiomn is to be implemented
            return true
        }

}
