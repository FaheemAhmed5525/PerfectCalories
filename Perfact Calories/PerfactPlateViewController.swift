//
//  PerfactPlateViewController.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 03/09/2024.
//

import UIKit

class PerfactPlateViewController: HomeScreenFormat {

    let scrollView = UIScrollView()
    
    let itemListContainer = UIStackView()
    
    
    //item containing box hieght
    let itemHeight = 28
    
    
    //fruits
    let fruitItem = UIView()
    
    //Dry fruits
    let dryFruitItem = UIView()
    
    //vegetables
    let vegetablesBox = UIView()
    
    //beverages
    let beveragesBox = UIView()
    
    
    var requiredCalories = AppCommons.user.getAgeGroup().totalCaluries
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    
        setupTopbar()
        
        
        setupScrollView()
        setupItemListContainer()
        
        setupFruitBox()
        setupDryFruitBox()
        setupVegetableBox()
        setupBeveragesBox()
        
        view.bringSubviewToFront(sidebar)
    }
    
    
    
    // Changing the title of screen
    override func setupScreenTitle() {
        super.setupScreenTitle()
        screenTitle.text = "Nutritious Plate"
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
            scrollView.topAnchor.constraint(equalTo: topbar.bottomAnchor, constant: 12),
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
        itemListContainer.distribution = .fill
        itemListContainer.spacing = 6
        itemListContainer.axis = .vertical
        
        NSLayoutConstraint.activate([
            itemListContainer.topAnchor.constraint(equalTo: scrollView.topAnchor),
            itemListContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            itemListContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            itemListContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            itemListContainer.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }
    

    
    
    func setupFruitBox() {
        
        itemListContainer.addArrangedSubview(fruitItem)
        fruitItem.translatesAutoresizingMaskIntoConstraints = false
        fruitItem.backgroundColor = .white

        fruitItem.layer.borderColor = AppCommons.borderColor
        fruitItem.layer.borderWidth = 1.0
        fruitItem.layer.cornerRadius = 12.0
        fruitItem.clipsToBounds = true
        fruitItem.heightAnchor.constraint(equalToConstant: 180).isActive = true
        fruitItem.widthAnchor.constraint(equalTo: itemListContainer.widthAnchor).isActive = true

        
        
        let quantityOfFruits = Float(0.12)  //12%
        
        let foodItem = AppCommons.foods.fruits[Int.random(in: 0..<AppCommons.foods.fruits.count)]
        //quantity of the food to be taken
        let quantity = round(Float((foodItem.Weight / foodItem.totalCalories) * requiredCalories * quantityOfFruits))
        
        
        let itemNameLabel = UILabel()
        fruitItem.addSubview(itemNameLabel)
        itemNameLabel.translatesAutoresizingMaskIntoConstraints = false
        itemNameLabel.text = String("\(foodItem.Name)")
        itemNameLabel.textColor = AppCommons.textColor
        itemNameLabel.font = .systemFont(ofSize: 24, weight: .bold)
        itemNameLabel.layer.borderWidth = 0
        
        // NameLabel prints the name of the food item
        let quantityLabel = UILabel()
        fruitItem.addSubview(quantityLabel)
        quantityLabel.translatesAutoresizingMaskIntoConstraints = false
        quantityLabel.text = String("Quantity: \(quantity) g")
        quantityLabel.textAlignment = .right
        quantityLabel.textColor = AppCommons.textColor3
        quantityLabel.font = .systemFont(ofSize: 22)
        quantityLabel.layer.borderWidth = 0

        
        let imageView = UIImageView()
        imageView.image = foodItem.Image
        fruitItem.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 12.0
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        
        NSLayoutConstraint.activate([
            itemNameLabel.topAnchor.constraint(equalTo: fruitItem.topAnchor, constant: 24),
            itemNameLabel.leadingAnchor.constraint(equalTo: fruitItem.leadingAnchor, constant: 12),
            itemNameLabel.widthAnchor.constraint(equalToConstant: 200),
            itemNameLabel.heightAnchor.constraint(equalToConstant: CGFloat(itemHeight)),
            
            quantityLabel.topAnchor.constraint(equalTo: itemNameLabel.bottomAnchor, constant: 12),
            quantityLabel.leadingAnchor.constraint(equalTo: fruitItem.leadingAnchor, constant: 12),
            
            imageView.topAnchor.constraint(equalTo: fruitItem.topAnchor, constant:  12),
            imageView.trailingAnchor.constraint(equalTo: fruitItem.trailingAnchor, constant: -12),
            imageView.widthAnchor.constraint(equalToConstant: 156),
            imageView.heightAnchor.constraint(equalToConstant: 156)
        ])
        
        
    }
            
            
    
    func setupDryFruitBox() {
        
        itemListContainer.addArrangedSubview(dryFruitItem)
        dryFruitItem.translatesAutoresizingMaskIntoConstraints = false
        dryFruitItem.backgroundColor = .white

        dryFruitItem.layer.borderColor = AppCommons.borderColor
        dryFruitItem.layer.borderWidth = 1.0
        dryFruitItem.layer.cornerRadius = 12.0
        dryFruitItem.clipsToBounds = true
        dryFruitItem.heightAnchor.constraint(equalToConstant: 180).isActive = true
        dryFruitItem.widthAnchor.constraint(equalTo: itemListContainer.widthAnchor).isActive = true
        
        
        
        let quantityOfDryFruits = Float(0.12)  //12%
        
        let foodItem = AppCommons.foods.dryFruits[Int.random(in: 0..<AppCommons.foods.dryFruits.count)]
        //quantity of the food to be taken
        let quantity = round(Float((foodItem.Weight / foodItem.totalCalories) * requiredCalories * quantityOfDryFruits))
        
        
        let itemNameLabel = UILabel()
        dryFruitItem.addSubview(itemNameLabel)
        itemNameLabel.translatesAutoresizingMaskIntoConstraints = false
        itemNameLabel.text = String("\(foodItem.Name)")
        itemNameLabel.textColor = AppCommons.textColor
        itemNameLabel.font = .systemFont(ofSize: 24, weight: .bold)
        itemNameLabel.layer.borderWidth = 0
        
        // NameLabel prints the name of the food item
        let quantityLabel = UILabel()
        dryFruitItem.addSubview(quantityLabel)
        quantityLabel.translatesAutoresizingMaskIntoConstraints = false
        quantityLabel.text = String("Quantity: \(quantity) g")
        quantityLabel.textAlignment = .right
        quantityLabel.textColor = AppCommons.textColor3
        quantityLabel.font = .systemFont(ofSize: 22)
        quantityLabel.layer.borderWidth = 0

        
        let imageView = UIImageView()
        imageView.image = foodItem.Image
        dryFruitItem.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 12.0
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        
        NSLayoutConstraint.activate([
            itemNameLabel.topAnchor.constraint(equalTo: dryFruitItem.topAnchor, constant: 24),
            itemNameLabel.leadingAnchor.constraint(equalTo: dryFruitItem.leadingAnchor, constant: 12),
            itemNameLabel.widthAnchor.constraint(equalToConstant: 200),
            itemNameLabel.heightAnchor.constraint(equalToConstant: CGFloat(itemHeight)),
            
            quantityLabel.topAnchor.constraint(equalTo: itemNameLabel.bottomAnchor, constant: 12),
            quantityLabel.leadingAnchor.constraint(equalTo: dryFruitItem.leadingAnchor, constant: 12),
            
            imageView.topAnchor.constraint(equalTo: dryFruitItem.topAnchor, constant: 12),
            imageView.trailingAnchor.constraint(equalTo: dryFruitItem.trailingAnchor, constant: -12),
            imageView.widthAnchor.constraint(equalToConstant: 156),
            imageView.heightAnchor.constraint(equalToConstant: 156)
        ])
    }
    
    
    //Vegetables
    func setupVegetableBox() {
        
        itemListContainer.addArrangedSubview(vegetablesBox)
        vegetablesBox.translatesAutoresizingMaskIntoConstraints = false
        vegetablesBox.backgroundColor = .white

        vegetablesBox.layer.borderColor = AppCommons.borderColor
        vegetablesBox.layer.borderWidth = 1.0
        vegetablesBox.layer.cornerRadius = 12.0
        vegetablesBox.clipsToBounds = true
        vegetablesBox.heightAnchor.constraint(equalToConstant: 180).isActive = true
        vegetablesBox.widthAnchor.constraint(equalTo: itemListContainer.widthAnchor).isActive = true
        
        
        
        let quantityOfDryFruits = Float(0.12)  //12%
        
        let foodItem = AppCommons.foods.vegetables[Int.random(in: 0..<AppCommons.foods.vegetables.count)]
        //quantity of the food to be taken
        let quantity = round(Float((foodItem.Weight / foodItem.totalCalories) * requiredCalories * quantityOfDryFruits))
        
        
        let itemNameLabel = UILabel()
        vegetablesBox.addSubview(itemNameLabel)
        itemNameLabel.translatesAutoresizingMaskIntoConstraints = false
        itemNameLabel.text = String("\(foodItem.Name)")
        itemNameLabel.textColor = AppCommons.textColor
        itemNameLabel.font = .systemFont(ofSize: 24, weight: .bold)
        itemNameLabel.layer.borderWidth = 0
        
        // NameLabel prints the name of the food item
        let quantityLabel = UILabel()
        vegetablesBox.addSubview(quantityLabel)
        quantityLabel.translatesAutoresizingMaskIntoConstraints = false
        quantityLabel.text = String("Quantity: \(quantity) g")
        quantityLabel.textAlignment = .right
        quantityLabel.textColor = AppCommons.textColor3
        quantityLabel.font = .systemFont(ofSize: 22)
        quantityLabel.layer.borderWidth = 0

        
        let imageView = UIImageView()
        imageView.image = foodItem.Image
        vegetablesBox.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 12.0
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        
        NSLayoutConstraint.activate([
            itemNameLabel.topAnchor.constraint(equalTo: vegetablesBox.topAnchor, constant: 24),
            itemNameLabel.leadingAnchor.constraint(equalTo: vegetablesBox.leadingAnchor, constant: 12),
            itemNameLabel.widthAnchor.constraint(equalToConstant: 200),
            itemNameLabel.heightAnchor.constraint(equalToConstant: CGFloat(itemHeight)),
            
            quantityLabel.topAnchor.constraint(equalTo: itemNameLabel.bottomAnchor, constant: 12),
            quantityLabel.leadingAnchor.constraint(equalTo: vegetablesBox.leadingAnchor, constant: 12),
            
            imageView.topAnchor.constraint(equalTo: vegetablesBox.topAnchor, constant: 12),
            imageView.trailingAnchor.constraint(equalTo: vegetablesBox.trailingAnchor, constant: -12),
            imageView.widthAnchor.constraint(equalToConstant: 156),
            imageView.heightAnchor.constraint(equalToConstant: 156)
        ])
    }
    
    
    //Vegetables
    func setupBeveragesBox() {
        
        itemListContainer.addArrangedSubview(beveragesBox)
        beveragesBox.translatesAutoresizingMaskIntoConstraints = false
        beveragesBox.backgroundColor = .white

        beveragesBox.layer.borderColor = AppCommons.borderColor
        beveragesBox.layer.borderWidth = 1.0
        beveragesBox.layer.cornerRadius = 12.0
        beveragesBox.clipsToBounds = true
        beveragesBox.heightAnchor.constraint(equalToConstant: 180).isActive = true
//        beveragesBox.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
//        beveragesBox.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        beveragesBox.widthAnchor.constraint(equalTo: itemListContainer.widthAnchor).isActive = true
        
        
        
        let quantityOfDryFruits = Float(0.12)  //12%
        
        let foodItem = AppCommons.foods.beverages[Int.random(in: 0..<AppCommons.foods.beverages.count)]
        //quantity of the food to be taken
        let quantity = round(Float((foodItem.Weight / foodItem.totalCalories) * requiredCalories * quantityOfDryFruits))
        
        
        let itemNameLabel = UILabel()
        beveragesBox.addSubview(itemNameLabel)
        itemNameLabel.translatesAutoresizingMaskIntoConstraints = false
        itemNameLabel.text = String("\(foodItem.Name)")
        itemNameLabel.textColor = AppCommons.textColor
        itemNameLabel.font = .systemFont(ofSize: 24, weight: .bold)
        itemNameLabel.layer.borderWidth = 0
        
        // NameLabel prints the name of the food item
        let quantityLabel = UILabel()
        beveragesBox.addSubview(quantityLabel)
        quantityLabel.translatesAutoresizingMaskIntoConstraints = false
        quantityLabel.text = String("Quantity: \(quantity) g")
        quantityLabel.textAlignment = .right
        quantityLabel.textColor = AppCommons.textColor3
        quantityLabel.font = .systemFont(ofSize: 22)
        quantityLabel.layer.borderWidth = 0

        
        let imageView = UIImageView()
        imageView.image = foodItem.Image
        beveragesBox.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 12.0
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        
        NSLayoutConstraint.activate([
            itemNameLabel.topAnchor.constraint(equalTo: beveragesBox.topAnchor, constant: 24),
            itemNameLabel.leadingAnchor.constraint(equalTo: beveragesBox.leadingAnchor, constant: 12),
            itemNameLabel.widthAnchor.constraint(equalToConstant: 200),
            itemNameLabel.heightAnchor.constraint(equalToConstant: CGFloat(itemHeight)),
            
            quantityLabel.topAnchor.constraint(equalTo: itemNameLabel.bottomAnchor, constant: 12),
            quantityLabel.leadingAnchor.constraint(equalTo: beveragesBox.leadingAnchor, constant: 12),
            
            imageView.topAnchor.constraint(equalTo: beveragesBox.topAnchor, constant: 12),
            imageView.trailingAnchor.constraint(equalTo: beveragesBox.trailingAnchor, constant: -12),
            imageView.widthAnchor.constraint(equalToConstant: 156),
            imageView.heightAnchor.constraint(equalToConstant: 156)
        ])
    }
    
    
    
    @objc func showItemDetails(_ sender: UITapGestureRecognizer) {
        // Get the tapped view and its tag
        if sidebar.isHidden == false {
            sidebar.isHidden = true
        }
        else {
            print("----------foodItemdetail------")
        }
    }

}
