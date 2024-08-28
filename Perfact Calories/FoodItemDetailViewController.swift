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
    
    //
    let imageView = UIImageView()
    
    static var dataValue: [(String, Float)] = []
    
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
        
    }
    
    
    
    
    override func setupScreenTitle() {
        super.setupScreenTitle()
        
        screenTitle.text = "Food Details"
        
    }
    
    // Function to customize the welcome label
    func setupFoodNameLabel() {
        view.addSubview(itemName)
        
        itemName.translatesAutoresizingMaskIntoConstraints = false
        let name: String = HomeScreenFormat.self.selectedFood?.Name ?? "No Food Item"
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
        
        imageView.image = HomeScreenFormat.self.selectedFood?.Image ?? .apple3
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
//        print("this \(FoodItemDetailViewController.dataValue.count)")
        return FoodItemDetailViewController.dataValue.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //clear the previous data
        for subview in cell.contentView.subviews{
            subview.removeFromSuperview()
        }
        
        //getting one row
        let rowData = FoodItemDetailViewController.dataValue[indexPath.row]
        
        //Print the name of the fruit
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = rowData.0
//        print("\(rowData.0)")
        nameLabel.font = .systemFont(ofSize: 24)
        
        let valueLabel = UILabel()
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
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
        
        FoodItemDetailViewController.dataValue.append(("Weight", Float(HomeScreenFormat.selectedFood?.Weight ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Total Calories", Float(HomeScreenFormat.selectedFood?.totalCaluries ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Water", Float(HomeScreenFormat.selectedFood?.water ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Protiens", Float(HomeScreenFormat.selectedFood?.proteins ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Vitamin C", Float(HomeScreenFormat.selectedFood?.vitaminC ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Iron", Float(HomeScreenFormat.selectedFood?.iron ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Calcium", Float(HomeScreenFormat.selectedFood?.calcium ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Potassium", Float(HomeScreenFormat.selectedFood?.potassium ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Fat", Float(HomeScreenFormat.selectedFood?.fat ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Fiber", Float(HomeScreenFormat.selectedFood?.fiber ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Magnesium", Float(HomeScreenFormat.selectedFood?.magnesium ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Vitamin B6", Float(HomeScreenFormat.selectedFood?.vitaminB2 ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Vitamin B2", Float(HomeScreenFormat.selectedFood?.vitaminB2 ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Vitamin A", Float(HomeScreenFormat.selectedFood?.vitaminA ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Zinc", Float(HomeScreenFormat.selectedFood?.zinc ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Copper", Float(HomeScreenFormat.selectedFood?.copper ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Manganese", Float(HomeScreenFormat.selectedFood?.manganese ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Phosphorus", Float(HomeScreenFormat.selectedFood?.phosphorus ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Sodium", Float(HomeScreenFormat.selectedFood?.sodium ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Sugar", Float(HomeScreenFormat.selectedFood?.sugar ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Sulfer", Float(HomeScreenFormat.selectedFood?.sulfer ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Vitamin E", Float(HomeScreenFormat.selectedFood?.vitaminE ?? 0.0)))
        FoodItemDetailViewController.dataValue.append(("Vitamin K", Float(HomeScreenFormat.selectedFood?.vitaminK ?? 0.0)))

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
