//
//  LaunchScreenViewController.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 30/08/2024.
//

import UIKit

class LaunchScreen: AppCommons {
    
    let appName = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLogo()
        
        // wait for some time
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            
            //loading the loged user
            let result = AppCommons.user.laodLoggedUser()
            // if any loged user, go to the HomeScreen, else go to UserLogin
            if result == "loading_successful" {
                self.goToHomeScreen()
            }
            else {
                self.goToUserLogin()
                
            }
        }
        
    }
    
    func moveToScreen() {
        
    }
    
    func setupLogo() {
        view.addSubview(appName)
        
        appName.translatesAutoresizingMaskIntoConstraints = false
        appName.text = "Perfect Calories"
        appName.font = .systemFont(ofSize: 32, weight: .bold)
        appName.textAlignment = .center
        appName.numberOfLines = 1
        appName.textColor = AppCommons.textColor3
        
        NSLayoutConstraint.activate([
            appName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            appName.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            appName.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func goToHomeScreen() {
        let nextScreen = HomeScreen()
        navigationController?.setViewControllers([nextScreen], animated: true)
    }
    
    
    func goToUserLogin() {
        let nextScreen = UserLogin()
        navigationController?.setViewControllers([nextScreen], animated: false)
        
    }
    
}
