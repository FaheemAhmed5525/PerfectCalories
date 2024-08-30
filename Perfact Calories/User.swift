//
//  File.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 19/08/2024.
//

import Foundation
import UIKit
import KeychainAccess

class User{
    
    
    private var name = String()
    private var birthDateInSec: Double        //birthDate in seconds
    private var weight: Int
    public static var currentUser: Int = 0
    public static var totalUsers: Int = 0
    
    
    //Variable to store and retive data
    private let keychain = Keychain(service: "FaheemAhmed5525.PerfectCalories")
    
//    ///Parametrized Initializer
//    init(name: String = String(), age: Int, weight: Int) {
//        self.name = name
//        self.age = age
//        self.weight = weight
//    }
    ///Default initializer
    init() {
        self.name = ""
        self.weight = 0
        self.birthDateInSec = Date().timeIntervalSince1970
    }
    
    //public properties
                                                                    //public access of user name
    public var Name: String {
        get{
            return name
        }
        set {
            self.name = newValue
        }
    }
    
                                                                    //pubic access of user age in seconds
    public var Age: Double {
        get {
            return Date().timeIntervalSince1970 - birthDateInSec
        }
        set {
            birthDateInSec = Date().timeIntervalSince1970 - newValue
        }
    }
    
                                                                    ///public acct of user birthDate in seconds
    public var Birthdate: Double{
        get {
            return self.birthDateInSec
        }
        set {
            self.birthDateInSec = newValue
        }
    }
    
                                                                    //Public access weight property
    public var Weight: Int {
        get {
            return self.weight
        }
        set {
            self.weight = newValue
        }
    }
    
                                                                        //Get user's age in years
    public var Years: Int {
        get{
            return Int(Age / 31557600)  ///Age is divided by the seconds in a year
        }
    }
    
                                                                        //To get he age of the user in months over years
    public var Months: Int {
        get{
            return Int((Age.truncatingRemainder(dividingBy: 31557600)) / 2626560)
        }
    }
    
    
    
    ///funtion check if the user exist, if true, is loads the object, else returns false
    public func loadUser(name: String)-> String {
        do {
            var storedName: String
            for i in 0 ... User.totalUsers  {
                storedName = try keychain.get("name_\(i)") ?? ""        // If this is the username we are searching for
                if name == storedName {                                 // laod the user
                    self.name = try keychain.get("name_\(i)") ?? ""
                    self.weight = Int(try keychain.get("weight_\(i)") ?? "") ?? 0
                    self.birthDateInSec = Double(try keychain.get("birthdate_\(i)") ?? "") ?? 0.0
                    try keychain.set(self.name, key: "logged_user_name")      // set this user as loged user
                    User.currentUser = i
                    return "loading_successful"
                }
            }
        } catch {
            return "loading_error"
        }
      
            ///Code to load user
            return "no_such_user"
    }
    
    /// function that loads loged user
    func laodLoggedUser()-> String {
        do {
            let name = try keychain.get("logged_user_name")      // check if any user is loged in
            if name != "" {
                return self.loadUser(name: name ?? "loading_error")    // laod the loged user
            }
            else {
                return "no_logged_user"
            }
        } catch {
            return "loading_error"
        }
    }
    
    func endThisSession()-> String {
        do {
            try keychain.set("", key: "logged_user_name")
            return "logout_successful"
        } catch {
            return "logout_error"
        }
    }
    
    
    ///function takes caller as argument and store it to file and returns true else returns false
    public func storeUser()-> String {
        User.currentUser = User.totalUsers
        
        do {
            var storedName: String
            for i in 0 ... User.totalUsers  {
                storedName = try keychain.get("name_\(i)") ?? ""
                if self.name == storedName {
                    User.currentUser = i
                    return "already_exists"
                }
            }
            try keychain.set(self.name, key: "name_\(User.currentUser)")
            try keychain.set("\(self.weight)", key: "weight_\(User.currentUser)")
            try keychain.set("\(self.birthDateInSec)", key: "birthdate_\(User.currentUser)")
            try keychain.set(self.name, key: "logged_user_name")
            User.totalUsers += 1
            return "storing_successful"
        } catch {
            return "storing_error"
        }
        
    }
    
    func getCurrentUser() {
        
    }
    
}
