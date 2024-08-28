//
//  FoodItemsViewController.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 23/08/2024.
//

import UIKit

class FoodItemsViewController: HomeScreenFormat, UIGestureRecognizerDelegate {

    // A scrolling view that contains stackview
    let scrollView = UIScrollView()
    
    // Stack view that contains viewboxes
    let itemListContainer = UIStackView()
    
    
    
    // itemViewBox array store UIViews that dispaly items
    let itemViewBoxs: [UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScrollView()
        setupItemListContainer()
        setupItemBoxs()
    }
    
    //overriding the function to change the title of the screen
    override func setupScreenTitle() {
        super.setupScreenTitle()
        screenTitle.text = "Food List"
    }
    
    /// function setupScrollView customize the scrollView
    func setupScrollView() {
        view.addSubview(scrollView)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .init(red: 200/255, green: 200/255, blue: 240/255, alpha: 1.0) //AppCommons.appBackgroundColor
        scrollView.layer.borderColor = AppCommons.lightBorderColor
        scrollView.layer.borderWidth = 2.0
        scrollView.layer.cornerRadius = 12.0
        scrollView.isScrollEnabled = true
        
            NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: topbar.bottomAnchor, constant: 6),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -24),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 6),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -6)])
    }
    
    
    
    
    /// function setupImteListContainer customize the itemListContianers
    func setupItemListContainer() {
        scrollView.addSubview(itemListContainer)
        
        itemListContainer.translatesAutoresizingMaskIntoConstraints = false
        itemListContainer.backgroundColor = .clear
        itemListContainer.layer.borderWidth = 0
        itemListContainer.layer.cornerRadius = 12.0
        itemListContainer.distribution = .fillEqually
        itemListContainer.spacing = 6
        itemListContainer.axis = .vertical
        
        NSLayoutConstraint.activate([
            itemListContainer.topAnchor.constraint(equalTo: scrollView.topAnchor),
            itemListContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            itemListContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            itemListContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor)])
    }

    
    //function setupItemBoxs customizes the itemViewBoxs and places data in them.
    func setupItemBoxs() {
        for i in 0...(AppCommons.foods.foodItems.count-1) {
            
            let box = UIView()
            itemListContainer.addArrangedSubview(box)
            box.translatesAutoresizingMaskIntoConstraints = false
            box.backgroundColor = UIColor(cgColor: AppCommons.themeColor)
            box.layer.borderColor = AppCommons.borderColor
            box.layer.borderWidth = 1.0
            box.layer.cornerRadius = 12.0
            box.heightAnchor.constraint(equalToConstant: 70).isActive = true
            box.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
            
            
            /// nameLabel print the name of the food item
            let nameLabel = UILabel()
            nameLabel.translatesAutoresizingMaskIntoConstraints = false
            nameLabel.text = String(AppCommons.foods.foodItems[i].Name)
            nameLabel.textColor = AppCommons.textColor
            nameLabel.font = .systemFont(ofSize: 40, weight: .bold)
            nameLabel.layer.borderWidth = 0
            
            
            ///averageWeight print the average weight of the item
            let perWeekLabel = UILabel()
            perWeekLabel.translatesAutoresizingMaskIntoConstraints = false
            perWeekLabel.text = String(AppCommons.foods.foodItems[i].prescribedPerWeek) + " per week"
            perWeekLabel.textColor = AppCommons.textColor3
            perWeekLabel.font = .systemFont(ofSize: 20)
            perWeekLabel.layer.borderWidth = 0.0
            
            
            ///typeLabel show the type of the fooditem like fruit, vegitable or else
            let typeLabel = UILabel()
            typeLabel.translatesAutoresizingMaskIntoConstraints = false
            typeLabel.text = "Type: " + String(AppCommons.foods.foodItems[i].type)
            typeLabel.textColor = AppCommons.textColor3
            typeLabel.font = .systemFont(ofSize: 20)
            typeLabel.layer.borderWidth = 0.0
            
            
            /// caloriesLabel print the total calories in food item
            let caloriesLabel = UILabel()
            caloriesLabel.translatesAutoresizingMaskIntoConstraints = false
            caloriesLabel.text = "Total Calories: " + String(AppCommons.foods.foodItems[i].totalCaluries)
            caloriesLabel.textColor = AppCommons.textColor3
            caloriesLabel.font = .systemFont(ofSize: 20)
            caloriesLabel.layer.borderWidth = 0

            let goButton = UIButton()
            goButton.translatesAutoresizingMaskIntoConstraints = false
            goButton.setTitle(" ", for: .normal)
            goButton.backgroundColor = .none
            goButton.layer.borderWidth = 0
            goButton.layer.cornerRadius = 12.0
            goButton.addTarget(self, action: #selector(showItemDetails), for: .touchUpInside)
            
            /// Adding labels to view: box
            box.addSubview(nameLabel)
            box.addSubview(caloriesLabel)
            box.addSubview(perWeekLabel)
            box.addSubview(typeLabel)
            box.addSubview(goButton)
            
            /// Applying constriants to the labels to put them view: box
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
               
                goButton.topAnchor.constraint(equalTo: box.topAnchor),
                goButton.bottomAnchor.constraint(equalTo: box.bottomAnchor),
                goButton.leadingAnchor.constraint(equalTo: box.leadingAnchor),
                goButton.trailingAnchor.constraint(equalTo: box.trailingAnchor)
            ])
        }
    }
    
    
    @objc func showItemDetails() {
        print("-----------Food List detials Screen-----------")
        HomeScreenFormat.selectedFood = AppCommons.foods.foodItems[0]
        let nextScreen = FoodItemDetailViewController()
        navigationController?.pushViewController(nextScreen, animated: true)
    }

}
//
//extension ViewController: UIGestureRecognizerDelegate {
//    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith  otherGestureRecognizer: UIGestureRecognizer) -> Bool {
//        return true
//    }
//}
