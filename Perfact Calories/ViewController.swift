//
//  ViewController.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 22/08/2024.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @objc func page1ButtonTapped() {
        ///Mark: to be implemented
    }
    
    @objc func page2ButtonTapped() {
        //Mark: to be implemented
    }
    
    @objc func page3ButtonTapped() {
        //Mark: to be implemented
    }
    
    @objc func goToHome() {
        let homeScreen = HomeScreen()
        navigationController?.setViewControllers([homeScreen], animated: true)
    }
    
    @objc func goToFoodList() {
        let nextScreen = FoodItemsViewController()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    }
