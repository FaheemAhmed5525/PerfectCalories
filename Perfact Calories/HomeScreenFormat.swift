//
//  HomeScreenFormat.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 19/08/2024.
//

import UIKit


class HomeScreenFormat: AppCommons {

    //title to be displayed of the screen
    let screenTitle = UILabel()
    
    //sidebar view that contain items
    let sidebar = UIView()
    
    //sidebarButton: hide and unhide sidebar
    let sidebarButton = UIButton()
    
    //sidebar buttons: link to pages
    let homeButton = UIButton()
    let fruitsButton = UIButton()
    let dryFruitListButton = UIButton()
    let vegetableListButton = UIButton()
    let beveragesListButton = UIButton()
    let humanNeedsButton = UIButton()
    let perfectPlateButton = UIButton()
    let LogoutButton = UIButton()

    
    //topbar view contains app title, and sidebar button
    let topbar = UIView()

    // a foodItem Object that will contain item that will be passed between the screens
    static var selectedFood: FoodItem? = nil
    
    static let ageGroups = HumanNeeds()
    
    static var selectedAgeGroup: NeedGroup? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTopbar()
        setupSidebar()
        
        self.navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    ///func setupTopbar customizes topbar
    func setupTopbar() {
        view.addSubview(topbar)
        
        topbar.translatesAutoresizingMaskIntoConstraints = false
        
        topbar.layer.addSublayer(CAGradientLayer(layer: [AppCommons.gradientColor1, AppCommons.gradientColor2]))
        //topbar.backgroundColor = UIColor(cgColor: AppCommons.themeColor)
        topbar.layer.borderWidth = 0.0
        
        NSLayoutConstraint.activate([
            topbar.topAnchor.constraint(equalTo: view.topAnchor),
            topbar.heightAnchor.constraint(equalTo:view.heightAnchor, multiplier: 1/7),
            topbar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topbar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        setupScreenTitle()
        setupSidebarButton()
    }
    
    ///function setupScreenTitle customizes title of the screen
    func setupScreenTitle() {
        topbar.addSubview(screenTitle)
        
        screenTitle.translatesAutoresizingMaskIntoConstraints = false
      //  screenTitle.backgroundColor = .none//UIColor(cgColor: AppCommons.themeColor)
        screenTitle.text = "Perfact Calories"
        screenTitle.textColor = AppCommons.textColor3
        screenTitle.textAlignment = .left
        screenTitle.font = .systemFont(ofSize: 48, weight: .bold)
        
        NSLayoutConstraint.activate([
            screenTitle.bottomAnchor.constraint(equalTo: topbar.bottomAnchor),
            screenTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            screenTitle.widthAnchor.constraint(equalToConstant: 300),
            screenTitle.heightAnchor.constraint(equalToConstant: 60)])
    }
    
    ///func setupSidebar customizes sidebar
    func setupSidebarButton() {
        topbar.addSubview(sidebarButton)
        
        sidebarButton.translatesAutoresizingMaskIntoConstraints = false
        sidebarButton.backgroundColor = UIColor(cgColor: AppCommons.gradientColor1)
        sidebarButton.setTitle("\\/", for: .normal)
        sidebarButton.titleLabel?.font = .systemFont(ofSize: 20)
        sidebarButton.setTitleColor(AppCommons.textColor3, for: .normal)
        sidebarButton.titleLabel?.textAlignment = .center
        sidebarButton.layer.borderWidth = 0.0
        sidebarButton.layer.cornerRadius = 4.0
        sidebarButton.addTarget(self, action: #selector(sidebarButtonTapped), for:.touchUpInside)
        
        NSLayoutConstraint.activate([
            sidebarButton.bottomAnchor.constraint(equalTo: topbar.bottomAnchor),
            sidebarButton.rightAnchor.constraint(equalTo: topbar.safeAreaLayoutGuide.rightAnchor, constant: -6.0),
            sidebarButton.widthAnchor.constraint(equalToConstant: 40),
            sidebarButton.heightAnchor.constraint(equalToConstant: 40)])
    }
    
    ///function setupSidebar customizes sidebar
    func setupSidebar() {
        view.addSubview(sidebar)
        
        sidebar.translatesAutoresizingMaskIntoConstraints = false
        sidebar.layer.borderColor = .none
        sidebar.layer.borderWidth = 1
        sidebar.layer.cornerRadius = 12
        sidebar.backgroundColor = .none
        sidebar.isHidden = true
        sidebar.clipsToBounds = true
        NSLayoutConstraint.activate([
            sidebar.topAnchor.constraint(equalTo: topbar.bottomAnchor),
            sidebar.rightAnchor.constraint(equalTo: view.rightAnchor),
            sidebar.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 3/7),
            sidebar.heightAnchor.constraint(equalToConstant: 380)])
        
        /// adding targets to the buttons:
        homeButton.addTarget(self, action: #selector(goToHome), for: .touchUpInside)
        fruitsButton.addTarget(self, action: #selector(goToFruitList), for: .touchUpInside)
        dryFruitListButton.addTarget(self, action: #selector(goToDryFruitList), for: .touchUpInside)
        vegetableListButton.addTarget(self, action: #selector(goToVegetableList), for: .touchUpInside)
        beveragesListButton.addTarget(self, action: #selector(goToBeverageList), for: .touchUpInside)
        humanNeedsButton.addTarget(self, action: #selector(goToNutritionalNeeds), for: .touchUpInside)
        perfectPlateButton.addTarget(self, action: #selector(goToFruitList), for: .touchUpInside)
        LogoutButton.addTarget(self, action: #selector(goToUserLogin), for: .touchUpInside)

        
        
        sidebar.setupAsSidebarButton(button: homeButton, title: "Home", position: 0)
        sidebar.setupAsSidebarButton(button: fruitsButton, title: "Fruits", position: 1)
        sidebar.setupAsSidebarButton(button: dryFruitListButton, title: "Dry Fruits", position: 2)
        sidebar.setupAsSidebarButton(button: vegetableListButton, title: "Vegetables", position: 3)
        sidebar.setupAsSidebarButton(button: beveragesListButton, title: "Beverages", position: 4)
        sidebar.setupAsSidebarButton(button: humanNeedsButton, title: "Human needs", position: 5)
        sidebar.setupAsSidebarButton(button: perfectPlateButton, title: "Calories Calculator", position: 6)
        sidebar.setupAsSidebarButton(button: LogoutButton, title: "Logout", position: 7)
        
    }
    
    

    
        
    
    @objc func sidebarButtonTapped() {
        //Mark: to implemented for some animation
        sidebar.isHidden = !(sidebar.isHidden)
        
    }
    
    //controler functions
    @objc func goToHome() {
        sidebar.isHidden = true
        print("----------Home Screen-----------")
        let homeScreen = HomeScreen()
        navigationController?.setViewControllers([homeScreen], animated: true)
    }
    
    @objc func goToFruitList() {
        sidebar.isHidden = true
        print("----------Fruit list Screen-----------")
        let nextScreen = FoodItemsViewController()
        nextScreen.foodItems = AppCommons.foods.fruits
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    @objc func goToDryFruitList() {
        sidebar.isHidden = true
        print("__________Dry Fruit List----------")
        let nextScreen = FoodItemsViewController()
        nextScreen.foodItems = AppCommons.foods.dryFruits
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    @objc func goToVegetableList() {
        sidebar.isHidden = true
        print("__________Vegetable List----------")
        let nextScreen = FoodItemsViewController()
        nextScreen.foodItems = AppCommons.foods.vegetables
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    @objc func goToBeverageList() {
        sidebar.isHidden = true
        print("---------Beverage List---------")
        let nextScreen = FoodItemsViewController()
        nextScreen.foodItems = AppCommons.foods.beverages
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    @objc func goToNutritionalNeeds() {
        sidebar.isHidden = true
        print("----------Nutritional Needs-------")
        let nextScreen = UserNutritionalNeeds()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    @objc func goToUserLogin() {
        let result = AppCommons.user.endThisSession()
        if result == "logout_successful" {
            let nextScreen = UserLogin()
            navigationController?.setViewControllers([nextScreen], animated: false)
        }
        else {
            print("-----Logout error---------")
        }
    }
    
    

}

extension UIView {
    func setupAsSidebarButton(button: UIButton, title: String, position: Int) {
        self.addSubview(button)
        
        let height = 32
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.setTitleColor(AppCommons.textColor3, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.titleLabel?.textAlignment = .left
        button.backgroundColor = AppCommons.buttonsBackgroundColor
        button.layer.cornerRadius = 0
        button.layer.borderWidth = 0
        button.layer.borderColor = .none
        button.layer.opacity = 0.8

        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: self.topAnchor, constant: CGFloat((height + 12) * position) ),
            button.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/8),
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }
    
    
    
}


