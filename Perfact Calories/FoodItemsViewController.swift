//
//  FoodItemsViewController.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 23/08/2024.
//


import UIKit

///Controller for fruis
class FoodItemsViewController: HomeScreenFormat, UIGestureRecognizerDelegate {

    // A scrolling view that contains stackview
    let scrollView = UIScrollView()
    
    // Stack view that contains viewboxes
    let itemListContainer = UIStackView()
    
    // itemViewBox array store UIViews that display items
    var itemViewBoxs: [UIView] = []
    
    // Array of foodItems to be shown on the screen
    var foodItems: [FoodItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScrollView()
        setupItemListContainer()
        setupItemBoxs()
        view.bringSubviewToFront(sidebar)
    }
    
    // Overriding the function to change the title of the screen
    override func setupScreenTitle() {
        super.setupScreenTitle()
        screenTitle.text = "Food List"
    }
    
    
    
    
    
    
    
    /// Function setupScrollView customizes the scrollView
    func setupScrollView() {
        view.addSubview(scrollView)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .none//init(red: 200/255, green: 200/255, blue: 240/255, alpha: 1.0)
        scrollView.layer.borderColor = AppCommons.lightBorderColor
        scrollView.layer.borderWidth = 0.0
        scrollView.layer.cornerRadius = 24.0
        scrollView.isScrollEnabled = true
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: topbar.bottomAnchor, constant: 6),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -24),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12)
        ])
    }
    
    /// Function setupItemListContainer customizes the itemListContainer
    func setupItemListContainer() {
        scrollView.addSubview(itemListContainer)
        
        itemListContainer.translatesAutoresizingMaskIntoConstraints = false
        itemListContainer.backgroundColor = .none
        itemListContainer.layer.borderWidth = 0
        itemListContainer.layer.cornerRadius = 12.0
        itemListContainer.distribution = .fillEqually
        itemListContainer.spacing = 6
        itemListContainer.axis = .vertical
        
        NSLayoutConstraint.activate([
            itemListContainer.topAnchor.constraint(equalTo: scrollView.topAnchor),
            itemListContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            itemListContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            itemListContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor)
        ])
    }
    
    // Function setupItemBoxs customizes the itemViewBoxs and places data in them
    func setupItemBoxs() {
        for i in 0...(foodItems.count-1) {
            
            let box = UIView()
            itemListContainer.addArrangedSubview(box)
            box.translatesAutoresizingMaskIntoConstraints = false
            box.backgroundColor = .white

            box.layer.borderColor = AppCommons.borderColor
            box.layer.borderWidth = 1.0
            box.layer.cornerRadius = 12.0
            box.heightAnchor.constraint(equalToConstant: 70).isActive = true
            box.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true

            // Assign a unique tag to the box for identifying which item was clicked
            box.tag = i
            
            // Adding tap gesture to the box that takes it to FoodItemsDetailView
            let gesture = UITapGestureRecognizer(target: self, action: #selector(showItemDetails(_:)))
            box.addGestureRecognizer(gesture)
            
            // NameLabel prints the name of the food item
            let nameLabel = UILabel()
            nameLabel.translatesAutoresizingMaskIntoConstraints = false
            nameLabel.text = String(foodItems[i].Name)
            nameLabel.textColor = AppCommons.textColor
            nameLabel.font = .systemFont(ofSize: 32, weight: .bold)
            nameLabel.layer.borderWidth = 0
            
            // AverageWeight prints the average weight of the item
            let perWeekLabel = UILabel()
            perWeekLabel.translatesAutoresizingMaskIntoConstraints = false
            perWeekLabel.text = String(foodItems[i].prescribedPerWeek) + " per week"
            perWeekLabel.textColor = AppCommons.textColor3
            perWeekLabel.font = .systemFont(ofSize: 20)
            perWeekLabel.layer.borderWidth = 0.0
            
            // TypeLabel shows the type of the food item like fruit, vegetable, or else
            let typeLabel = UILabel()
            typeLabel.translatesAutoresizingMaskIntoConstraints = false
            typeLabel.text = "Type: " + String(foodItems[i].type)
            typeLabel.textColor = AppCommons.textColor3
            typeLabel.font = .systemFont(ofSize: 20)
            typeLabel.layer.borderWidth = 0.0
            
            // CaloriesLabel prints the total calories in food item
            let caloriesLabel = UILabel()
            caloriesLabel.translatesAutoresizingMaskIntoConstraints = false
            caloriesLabel.text = "Total Calories: " + String(foodItems[i].totalCalories)
            caloriesLabel.textColor = AppCommons.textColor3
            caloriesLabel.font = .systemFont(ofSize: 20)
            caloriesLabel.layer.borderWidth = 0

            // Adding labels to view: box
            box.addSubview(nameLabel)
            box.addSubview(caloriesLabel)
            box.addSubview(perWeekLabel)
            box.addSubview(typeLabel)

            // Applying constraints to the labels to put them in view: box
            NSLayoutConstraint.activate([
                nameLabel.topAnchor.constraint(equalTo: box.topAnchor, constant: 2),
                nameLabel.leadingAnchor.constraint(equalTo: box.leadingAnchor, constant: 20),
                nameLabel.widthAnchor.constraint(equalToConstant: 300),
                nameLabel.heightAnchor.constraint(equalToConstant: 40),
                
                perWeekLabel.bottomAnchor.constraint(equalTo: box.bottomAnchor, constant: -4),
                perWeekLabel.leadingAnchor.constraint(equalTo: box.leadingAnchor, constant: 12),
                perWeekLabel.widthAnchor.constraint(equalToConstant: 150),
                perWeekLabel.heightAnchor.constraint(equalToConstant: 20),
                
                typeLabel.topAnchor.constraint(equalTo: box.topAnchor, constant: 4),
                typeLabel.trailingAnchor.constraint(equalTo: box.trailingAnchor, constant: -4),
                typeLabel.widthAnchor.constraint(equalToConstant: 120),
                typeLabel.heightAnchor.constraint(equalToConstant: 20),
                
                caloriesLabel.bottomAnchor.constraint(equalTo: box.bottomAnchor, constant: -4),
                caloriesLabel.trailingAnchor.constraint(equalTo: box.trailingAnchor, constant: -4),
                caloriesLabel.widthAnchor.constraint(equalToConstant: 180),
                caloriesLabel.heightAnchor.constraint(equalToConstant: 20),
            ])
        }
    }
    
    @objc func showItemDetails(_ sender: UITapGestureRecognizer) {
        // Get the tapped view and its tag
        if sidebar.isHidden == false {
            sidebar.isHidden = true
        }
        else {
            guard let tappedBox = sender.view else { return }
            let itemIndex = tappedBox.tag
            
            // Print the food item index
            print("Selected food item index: \(itemIndex)")
            
            // Pass the selected food item to the next screen
            let nextScreen = foodItemDetailsViewController()
            nextScreen.foodItem = foodItems[itemIndex]    // Assuming you have a foodItem property in FoodItemDetailViewController
            
            navigationController?.pushViewController(nextScreen, animated: true)
        }
    }
}






