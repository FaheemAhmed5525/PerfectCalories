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
    
    override func setupScreenTitle() {
        //Donothing
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
        buttonsBox.backgroundColor = .none//AppCommons.appBackgroundColor2
        buttonsBox.layer.cornerRadius = 24
        buttonsBox.translatesAutoresizingMaskIntoConstraints = false
        buttonsBox.layer.borderWidth = 0.0
       // buttonsBox.layer.borderColor = .none//AppCommons.lightBorderColor
        
        // Add buttons to the buttonsBox
        buttonsBox.addSubview(fruitsButton)
        buttonsBox.addSubview(dryFruitListButton)
        buttonsBox.addSubview(vegetableListButton)
        buttonsBox.addSubview(beveragesListButton)
        buttonsBox.addSubview(humanNeedsButton)
        buttonsBox.addSubview(perfectPlateButton)
        buttonsBox.addSubview(LogoutButton)
        
        
        
        // Configure buttons
        setupLargeButton(button: fruitsButton, title: "Fruits")
        setupLargeButton(button: dryFruitListButton, title: "Dry Fruits")
        setupLargeButton(button: vegetableListButton, title: "Vegetables")
        setupLargeButton(button: beveragesListButton, title: "Beverages")
        setupLargeButton(button: humanNeedsButton, title: "Human Needs")
        setupLargeButton(button: perfectPlateButton, title: "Select Healthy Food")
        setupLargeButton(button: LogoutButton, title: "Logout")
        // Constraints for buttonsBox
        view.addSubview(buttonsBox)
        NSLayoutConstraint.activate([
            buttonsBox.topAnchor.constraint(equalTo: welcomeMessage.bottomAnchor),
            buttonsBox.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -24),
            buttonsBox.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            buttonsBox.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
        
        // Setting target view
        fruitsButton.addTarget(self, action: #selector(goToFruitList), for: .touchUpInside)
        dryFruitListButton.addTarget(self, action: #selector(goToDryFruitList), for: .touchUpInside)
        vegetableListButton.addTarget(self, action: #selector(goToVegetableList), for: .touchUpInside)
        beveragesListButton.addTarget(self, action: #selector(goToBeverageList), for: .touchUpInside)
        humanNeedsButton.addTarget(self, action: #selector(goToNutritionalNeeds), for: .touchUpInside)
        perfectPlateButton.addTarget(self, action: #selector(goToHealthyFood), for: .touchUpInside)
        LogoutButton.addTarget(self, action: #selector(goToUserLogin), for: .touchUpInside)
        
        
        // Constraints for buttons
        NSLayoutConstraint.activate([
            fruitsButton.topAnchor.constraint(equalTo: buttonsBox.topAnchor, constant: 4),
            fruitsButton.leadingAnchor.constraint(equalTo: buttonsBox.leadingAnchor, constant: 6),
            fruitsButton.trailingAnchor.constraint(equalTo: buttonsBox.trailingAnchor, constant: -6),
            fruitsButton.heightAnchor.constraint(equalTo: buttonsBox.heightAnchor, multiplier: 1/9),
            
            dryFruitListButton.topAnchor.constraint(equalTo: fruitsButton.bottomAnchor, constant: 4),
            dryFruitListButton.leadingAnchor.constraint(equalTo: buttonsBox.leadingAnchor, constant: 6),
            dryFruitListButton.trailingAnchor.constraint(equalTo: buttonsBox.trailingAnchor, constant: -6),
            dryFruitListButton.heightAnchor.constraint(equalTo: buttonsBox.heightAnchor, multiplier: 1/9),
            
            vegetableListButton.topAnchor.constraint(equalTo: dryFruitListButton.bottomAnchor, constant: 4),
            vegetableListButton.leadingAnchor.constraint(equalTo: buttonsBox.leadingAnchor, constant: 6),
            vegetableListButton.trailingAnchor.constraint(equalTo: buttonsBox.trailingAnchor, constant: -6),
            vegetableListButton.heightAnchor.constraint(equalTo: buttonsBox.heightAnchor, multiplier: 1/9),
            
            beveragesListButton.topAnchor.constraint(equalTo: vegetableListButton.bottomAnchor, constant: 4),
            beveragesListButton.leadingAnchor.constraint(equalTo: buttonsBox.leadingAnchor, constant: 6),
            beveragesListButton.trailingAnchor.constraint(equalTo: buttonsBox.trailingAnchor, constant: -6),
            beveragesListButton.heightAnchor.constraint(equalTo: buttonsBox.heightAnchor, multiplier: 1/9),
            
            humanNeedsButton.topAnchor.constraint(equalTo: beveragesListButton.bottomAnchor, constant: 4),
            humanNeedsButton.leadingAnchor.constraint(equalTo: buttonsBox.leadingAnchor, constant: 6),
            humanNeedsButton.trailingAnchor.constraint(equalTo: buttonsBox.trailingAnchor, constant: -6),
            humanNeedsButton.heightAnchor.constraint(equalTo: buttonsBox.heightAnchor, multiplier: 1/9),
            
            perfectPlateButton.topAnchor.constraint(equalTo: humanNeedsButton.bottomAnchor, constant: 4),
            perfectPlateButton.leadingAnchor.constraint(equalTo: buttonsBox.leadingAnchor, constant: 6),
            perfectPlateButton.trailingAnchor.constraint(equalTo: buttonsBox.trailingAnchor, constant: -6),
            perfectPlateButton.heightAnchor.constraint(equalTo: buttonsBox.heightAnchor, multiplier: 1/9),
            
            LogoutButton.topAnchor.constraint(equalTo: perfectPlateButton.bottomAnchor, constant: 4),
            LogoutButton.leadingAnchor.constraint(equalTo: buttonsBox.leadingAnchor, constant: 6),
            LogoutButton.trailingAnchor.constraint(equalTo: buttonsBox.trailingAnchor, constant: -6),
            LogoutButton.heightAnchor.constraint(equalTo: buttonsBox.heightAnchor, multiplier: 1/9),
        ])
    }
    
    // Function to customize each button
    func setupLargeButton(button: UIButton, title: String) {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 24
        button.setTitleColor(.black/*AppCommons.textColor*/, for: .normal)
        button.backgroundColor = .white//UIColor(cgColor: AppCommons.themeColor)
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24, weight: .bold)
        button.layer.borderWidth = 2.0
        button.layer.borderColor = UIColor.systemBlue.cgColor
        
    }
    

    
}
