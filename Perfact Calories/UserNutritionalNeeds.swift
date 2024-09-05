//
//  UserNutritionalNeeds.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 27/08/2024.
//

import UIKit

class UserNutritionalNeeds: HomeScreenFormat, UITableViewDelegate, UITableViewDataSource  {

    
    
    
    var dataValue: [(String, Float)] = []

    
    // Constant header at the top of table
    let headerView = UIView()
    
    // Constains data to be presented
    let tableView = UITableView()
    
    let requirementDetails = AppCommons.user.getAgeGroup()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //setup to of screen
        setupScreenTitle()

        
//        selectUsersAgeGroup()
        addElementToArray()
        setupTextView()
        setupHeaderView()
        setupTableView()

        view.bringSubviewToFront(sidebar)
    }
    
    
    
    //Change the title of the screen
    override func setupScreenTitle() {
        super.setupScreenTitle()
        screenTitle.text = "Nutrients for You"
        screenTitle.font = .systemFont(ofSize: 32)
        
    }
    
    

    
//    //The functions return the index of the age group the user belongs to
//    func selectUsersAgeGroup(){
//        HomeScreenFormat.selectedAgeGroup = UserNutritionalNeeds.user.getAgeGroup()
//        let userAge = AppCommons.user.Age
//        for i in 0...HomeScreenFormat.ageGroups.ageGroups.count {
//            
//            if Int(userAge) <= HomeScreenFormat.ageGroups.ageGroups[i].maxAge {
//                HomeScreenFormat.selectedAgeGroup = HomeScreenFormat.ageGroups.ageGroups[i]
//                
//                break
//            }
//        }
//    }
    



    //customizing the header view
    func setupHeaderView() {
        view.addSubview(headerView)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.backgroundColor = .white
        headerView.layer.borderWidth = 1.0
        headerView.layer.borderColor = UIColor.black.cgColor
        headerView.layer.cornerRadius = 12
        
        let componentLabel = UILabel()
        componentLabel.translatesAutoresizingMaskIntoConstraints = false
        componentLabel.font = .systemFont(ofSize: 24, weight: .bold)
        componentLabel.textColor = .black
        componentLabel.numberOfLines = 0
        componentLabel.text = "Nutrients"
        
        let valuesLabel = UILabel()
        valuesLabel.translatesAutoresizingMaskIntoConstraints = false
        valuesLabel.font = .systemFont(ofSize: 24, weight: .bold)
        valuesLabel.textColor = .black
        valuesLabel.numberOfLines = 0
        valuesLabel.text = "Nutrient Values"
        
        headerView.addSubview(componentLabel)
        headerView.addSubview(valuesLabel)
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: topbar.bottomAnchor, constant: 72),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            headerView.heightAnchor.constraint(equalToConstant: 40),
            
            componentLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 8),
            componentLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 6),
            componentLabel.trailingAnchor.constraint(equalTo: headerView.centerXAnchor, constant: -6),
            componentLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -8),

            valuesLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 8),
            valuesLabel.leftAnchor.constraint(equalTo: headerView.centerXAnchor, constant: 6),
            valuesLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -6),
            valuesLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -8)
        ])
    }
    
    
    //setupTableView customizes the tableView
    func setupTableView() {
        
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.estimatedRowHeight = 45
        tableView.dataSource  = self
        tableView.delegate = self
        tableView.layer.cornerRadius = 12
        tableView.allowsSelection = false
        tableView.backgroundColor = .none
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 12),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -12),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -24)])
    }

    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataValue.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .white
        
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
        nameLabel.font = .systemFont(ofSize: 24)
        nameLabel.textColor = AppCommons.textColor
        
        let valueLabel = UILabel()
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        valueLabel.textColor = AppCommons.textColor
        //converting small value in mg and
        var value = rowData.1
        var valueString: String
        if value >= 1000 {
            value = value / 1000                                //converted to KG
            valueString = "\(round(value * 10) / 10) kg"        //rounding and converting to string
        }
        else if value >= 1{
            valueString = "\(round(value * 10) / 10)   g"       //rounding and converting to string

        }
        else if value >= 0.001{
            value = value * 1000
            valueString = "\(round(value * 10) / 10) mg"        //rounding and converting to string

        }
        else {
            value = value * 1000000
            valueString = "\(round(value * 10) / 10) µm"        //rounding and converting to string

        }
        valueLabel.text = "\(valueString)"
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
        
        
        dataValue.append(("Total Calories", Float(requirementDetails.totalCaluries)))
        dataValue.append(("Water", Float(requirementDetails.water)))
        dataValue.append(("Protiens", Float(requirementDetails.proteins)))
        dataValue.append(("Vitamin C", Float(requirementDetails.vitaminC)))
        dataValue.append(("Iron", Float(requirementDetails.iron)))
        dataValue.append(("Calcium", Float(requirementDetails.calcium)))
        dataValue.append(("Potassium", Float(requirementDetails.potassium)))
        dataValue.append(("Fat", Float(requirementDetails.fat)))
        dataValue.append(("Fiber", Float(requirementDetails.fiber)))
        dataValue.append(("Magnesium", Float(requirementDetails.magnesium)))
        dataValue.append(("Vitamin B6", Float(requirementDetails.vitaminB2)))
        dataValue.append(("Vitamin B2", Float(requirementDetails.vitaminB2)))
        dataValue.append(("Vitamin A", Float(requirementDetails.vitaminA)))
        dataValue.append(("Zinc", Float(requirementDetails.zinc)))
        dataValue.append(("Copper", Float(requirementDetails.copper)))
        dataValue.append(("Manganese", Float(requirementDetails.manganese)))
        dataValue.append(("Phosphorus", Float(requirementDetails.phosphorus)))
        dataValue.append(("Sodium", Float(requirementDetails.sodium)))
        dataValue.append(("Sugar", Float(requirementDetails.sugar)))
        dataValue.append(("Sulfer", Float(requirementDetails.sulfer)))
        dataValue.append(("Vitamin E", Float(requirementDetails.vitaminE)))
        dataValue.append(("Vitamin K", Float(requirementDetails.vitaminK)))

    }

    

    
    
}
