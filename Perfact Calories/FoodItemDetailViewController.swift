//
//  FoodItemDetailViewController.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 23/08/2024.
//


import UIKit

class FoodItemDetailViewController: HomeScreenFormat, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    //itenNameLabel will print the name of the food item to the user
    let itemName = UILabel()
    
    // A scrolling view that contains stackview
    let scrollView = UIScrollView()
    
    // Stack view that contains viewboxes
    let itemListContainer = UIStackView()
    
    //it will display the nutritional elements details in tabular format
    let tableView = UITableView()
    
    // Image to be displayed for the specic foodItem
    let imageView = UIImageView()
    
    // a foodItem Object that will contain item received from previous screen
    var foodItem: FoodItem? = nil
    
    var dataValue: [(String, Float)] = []
    
    //box to contain detais
    let box = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setup to of screen
        setupScreenTitle()
        setupFoodNameLabel()
        
        
        addElementToArray()
        
        //setup screen main ouput area
        setupScrollView()
        setupItemListContainer()
        setupImageView()
        setupTableView()
        
        
//        ///Observe for landscape and portrait and adjust the screen accordingly
//        NotificationCenter.default.addObserver(self, selector: #selector(orientationChanged), name: UIDevice.orientationDidChangeNotification, object: nil)
        view.bringSubviewToFront(sidebar)

    }
    
    
    
    
    override func setupScreenTitle() {
        super.setupScreenTitle()
        
        screenTitle.text = "Food Details"
        
    }
    
    // Function to customize the welcome label
    func setupFoodNameLabel() {
        view.addSubview(itemName)
        
        itemName.translatesAutoresizingMaskIntoConstraints = false
        let name: String = foodItem?.Name ?? "No Food Item"
        itemName.text = name
        itemName.font = .systemFont(ofSize: 32, weight: .bold)
        itemName.textAlignment = .center
        itemName.numberOfLines = 1
        itemName.textColor = AppCommons.textColor3
        
        NSLayoutConstraint.activate([
            itemName.topAnchor.constraint(equalTo: topbar.bottomAnchor, constant: 6),
            itemName.heightAnchor.constraint(equalToConstant: 40),
            itemName.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    ///display the image of the item the user
    func setupImageView() {
        
        imageView.image = foodItem?.Image ?? .apple3
        itemListContainer.addArrangedSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 12.0
        imageView.contentMode = .scaleAspectFill
        itemListContainer.addArrangedSubview(imageView)
        
        NSLayoutConstraint.activate([
           // imageView.topAnchor.constraint(equalTo: topbar.bottomAnchor, constant: 52),
            imageView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 300),
           // imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
    /// function setupScrollView customize the scrollView
    func setupScrollView() {
        view.addSubview(scrollView)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .init(red: 220/255, green: 220/255, blue: 240/255, alpha: 1.0) //AppCommons.appBackgroundColor
        scrollView.layer.borderColor = AppCommons.lightBorderColor
        scrollView.layer.borderWidth = 2.0
        scrollView.layer.cornerRadius = 12.0
        scrollView.isScrollEnabled = true
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: topbar.bottomAnchor, constant: 52),
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
            itemListContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            itemListContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            itemListContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
//
//        NSLayoutConstraint.activate([
//            itemListContainer.topAnchor.constraint(equalTo: topbar.bottomAnchor),
//            itemListContainer.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -24),
//            itemListContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 6),
//            itemListContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor)])
    }
    
    
    
    
    func setupTableView() {
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.estimatedRowHeight = 45
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = AppCommons.appBackgroundColor2
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        itemListContainer.addArrangedSubview(tableView)
        
        tableView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        print("this \(dataValue.count)")
        return dataValue.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //clear the previous data
        for subview in cell.contentView.subviews{
            subview.removeFromSuperview()
        }
        
        //getting one row
        let rowData = dataValue[indexPath.row]
        
        //Print the name of the fruit
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = rowData.0
//        print("\(rowData.0)")
        nameLabel.font = .systemFont(ofSize: 24)
        
        let valueLabel = UILabel()
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //converting small value in mg and 
        valueLabel.text = "\(rowData.1)"
//        print("\(rowData.1)")
        valueLabel.font = .systemFont(ofSize: 20)
        valueLabel.textAlignment = .right
        
        cell.contentView.addSubview(nameLabel)
        cell.contentView.addSubview(valueLabel)
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: cell.contentView.topAnchor, constant: 6),
            nameLabel.bottomAnchor.constraint(equalTo: cell.contentView.bottomAnchor, constant: -6),
            nameLabel.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 6),
        
            valueLabel.topAnchor.constraint(equalTo: cell.contentView.topAnchor, constant: 6),
            valueLabel.bottomAnchor.constraint(equalTo: cell.contentView.bottomAnchor, constant: -6),
            valueLabel.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 6),
            valueLabel.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor, constant: -6)])
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    //convert to array to print
    func addElementToArray() {
        
        
        dataValue.append(("Weight", Float(foodItem?.Weight ?? 0.0)))
        dataValue.append(("Total Calories", Float(foodItem?.totalCalories ?? 0.0)))
        dataValue.append(("Water", Float(foodItem?.water ?? 0.0)))
        dataValue.append(("Protiens", Float(foodItem?.proteins ?? 0.0)))
        dataValue.append(("Vitamin C", Float(foodItem?.vitaminC ?? 0.0)))
        dataValue.append(("Iron", Float(foodItem?.iron ?? 0.0)))
        dataValue.append(("Calcium", Float(foodItem?.calcium ?? 0.0)))
        dataValue.append(("Potassium", Float(HomeScreenFormat.selectedFood?.potassium ?? 0.0)))
        dataValue.append(("Fat", Float(foodItem?.fat ?? 0.0)))
        dataValue.append(("Fiber", Float(foodItem?.fiber ?? 0.0)))
        dataValue.append(("Magnesium", Float(foodItem?.magnesium ?? 0.0)))
        dataValue.append(("Vitamin B6", Float(foodItem?.vitaminB2 ?? 0.0)))
        dataValue.append(("Vitamin B2", Float(foodItem?.vitaminB2 ?? 0.0)))
        dataValue.append(("Vitamin A", Float(foodItem?.vitaminA ?? 0.0)))
        dataValue.append(("Zinc", Float(HomeScreenFormat.selectedFood?.zinc ?? 0.0)))
        dataValue.append(("Copper", Float(foodItem?.copper ?? 0.0)))
        dataValue.append(("Manganese", Float(foodItem?.manganese ?? 0.0)))
        dataValue.append(("Phosphorus", Float(foodItem?.phosphorus ?? 0.0)))
        dataValue.append(("Sodium", Float(foodItem?.sodium ?? 0.0)))
        dataValue.append(("Sugar", Float(foodItem?.sugar ?? 0.0)))
        dataValue.append(("Sulfer", Float(foodItem?.sulfer ?? 0.0)))
        dataValue.append(("Vitamin E", Float(foodItem?.vitaminE ?? 0.0)))
        dataValue.append(("Vitamin K", Float(foodItem?.vitaminK ?? 0.0)))

        
    }
    
    
//    //function to be called on orientation changed
//    @objc func orientationChanged() {
//        if UIDevice.current.orientation.isLandscape {
//            print("Landscape")
//        }
//        else if UIDevice.current.orientation.isPortrait {
//            print("Portrait")
//        }
//    }
}
