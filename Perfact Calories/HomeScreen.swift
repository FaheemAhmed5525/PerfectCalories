//
//  HomeScreen.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 19/08/2024.
//
import UIKit
import SwiftUI

class HomeScreen: HomeScreenFormat {
    
    // Welcome message label
    private let welcomeMessage = UILabel()
    
    // Buttons container view
    let buttonsBox = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up welcome message
        setupWelcomeLabel()
        
        // Set up buttons
        setupButtonsBox()
    }
    
    // Function to customize the welcome label
    func setupWelcomeLabel() {
        view.addSubview(welcomeMessage)
        
        welcomeMessage.translatesAutoresizingMaskIntoConstraints = false
        welcomeMessage.text = "Welcome \(AppCommons.user.Name)"
        welcomeMessage.font = .systemFont(ofSize: 32, weight: .bold)
        welcomeMessage.textAlignment = .center
        welcomeMessage.numberOfLines = 1
        welcomeMessage.textColor = AppCommons.textColor3
        
        NSLayoutConstraint.activate([
            welcomeMessage.topAnchor.constraint(equalTo: topbar.bottomAnchor, constant: 12),
            welcomeMessage.heightAnchor.constraint(equalToConstant: 40),
            welcomeMessage.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    // Hide the sidebar button
    override func setupSidebarButton() {
        // Custom sidebar button setup
    }
    
    // Hide the sidebar
    override func setupSidebar() {
        // Custom sidebar setup
    }
    
    // Function to customize the buttons box
    func setupButtonsBox() {
        buttonsBox.backgroundColor = AppCommons.appBackgroundColor2
        buttonsBox.layer.cornerRadius = 12
        buttonsBox.translatesAutoresizingMaskIntoConstraints = false
        buttonsBox.layer.borderWidth = 2.0
        buttonsBox.layer.borderColor = AppCommons.lightBorderColor
        
        // Add buttons to the buttonsBox
        buttonsBox.addSubview(foodItemsButton)
        buttonsBox.addSubview(humanNeedsButton)
        buttonsBox.addSubview(perfectPlateButton)
        
        
        
        // Configure buttons
        setupLargeButton(button: foodItemsButton, title: "Food Items")
        setupLargeButton(button: humanNeedsButton, title: "Human Needs")
        setupLargeButton(button: perfectPlateButton, title: "Perfect Plate")
        // Constraints for buttonsBox
        view.addSubview(buttonsBox)
        NSLayoutConstraint.activate([
            buttonsBox.topAnchor.constraint(equalTo: welcomeMessage.bottomAnchor),
            buttonsBox.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -24),
            buttonsBox.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            buttonsBox.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12)
        ])
        
        // Setting target view
        foodItemsButton.addTarget(self, action: #selector(goToFoodList), for: .touchUpInside)
        humanNeedsButton.addTarget(self, action: #selector(goToNutritionalNeeds), for: .touchUpInside)
        perfectPlateButton.addTarget(self, action: #selector(goToFoodList), for: .touchUpInside)
        
        
        // Constraints for buttons
        NSLayoutConstraint.activate([
            foodItemsButton.topAnchor.constraint(equalTo: buttonsBox.topAnchor, constant: 4),
            foodItemsButton.leadingAnchor.constraint(equalTo: buttonsBox.leadingAnchor, constant: 6),
            foodItemsButton.trailingAnchor.constraint(equalTo: buttonsBox.trailingAnchor, constant: -6),
            foodItemsButton.heightAnchor.constraint(equalTo: buttonsBox.heightAnchor, multiplier: 1/9),
            
            humanNeedsButton.topAnchor.constraint(equalTo: foodItemsButton.bottomAnchor, constant: 4),
            humanNeedsButton.leadingAnchor.constraint(equalTo: buttonsBox.leadingAnchor, constant: 6),
            humanNeedsButton.trailingAnchor.constraint(equalTo: buttonsBox.trailingAnchor, constant: -6),
            humanNeedsButton.heightAnchor.constraint(equalTo: buttonsBox.heightAnchor, multiplier: 1/9),
            
            perfectPlateButton.topAnchor.constraint(equalTo: humanNeedsButton.bottomAnchor, constant: 4),
            perfectPlateButton.leadingAnchor.constraint(equalTo: buttonsBox.leadingAnchor, constant: 6),
            perfectPlateButton.trailingAnchor.constraint(equalTo: buttonsBox.trailingAnchor, constant: -6),
            perfectPlateButton.heightAnchor.constraint(equalTo: buttonsBox.heightAnchor, multiplier: 1/9),
        ])
    }
    
    // Function to customize each button
    func setupLargeButton(button: UIButton, title: String) {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 12
        button.backgroundColor = UIColor(cgColor: AppCommons.themeColor)
        button.setTitle(title, for: .normal)
        button.layer.borderWidth = 2.0
        button.layer.borderColor = AppCommons.borderColor
    }
    

    
}
