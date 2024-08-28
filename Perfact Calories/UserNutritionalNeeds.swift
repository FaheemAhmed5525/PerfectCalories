//
//  UserNutritionalNeeds.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 27/08/2024.
//

import UIKit

class UserNutritionalNeeds: HomeScreenFormat, UITableViewDelegate, UITableViewDataSource  {

    
    
    
    static var dataValue: [(String, Float)] = []
    
    let tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //setup to of screen
        setupScreenTitle()

        selectUsersAgeGroup()
        addElementToArray()
        setupTableView()

        view.bringSubviewToFront(sidebar)
    }
    
    
    
    //Change the title of the screen
    override func setupScreenTitle() {
        super.setupScreenTitle()
        screenTitle.text = "Nutritions for You"
    }
    
    
    
    
    //The functions return the index of the age group the user belongs to
    func selectUsersAgeGroup(){
        let userAge = AppCommons.user.Age
        for i in 0...HomeScreenFormat.ageGroups.ageGroups.count {
            
            if Int(userAge) <= HomeScreenFormat.ageGroups.ageGroups[i].maxAge {
                HomeScreenFormat.selectedAgeGroup = HomeScreenFormat.ageGroups.ageGroups[i]
                
                break
            }
        }
    }
    
    
    
    //setupTableView customizes the tableView
    func setupTableView() {
        
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.estimatedRowHeight = 45
        tableView.dataSource  = self
        tableView.delegate = self
        tableView.backgroundColor = AppCommons.appBackgroundColor2
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topbar.safeAreaLayoutGuide.bottomAnchor, constant: 12),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 12),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -12),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -24)])
    }

    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UserNutritionalNeeds.dataValue.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //clear the previous data
        for subview in cell.contentView.subviews{
            subview.removeFromSuperview()
        }
        
        //getting one row
        let rowData = UserNutritionalNeeds.dataValue[indexPath.row]
        
        //Print the name of the fruit
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = rowData.0
        nameLabel.font = .systemFont(ofSize: 24)
        
        let valueLabel = UILabel()
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //converting small value in mg and
        let value = rowData.1
        var valueString: String
        if value >= 1000 {
            valueString = "\(value / 1000) kg"
        }
        else if value >= 1{
            valueString = "\(value)  g"
        }
        else if value >= 0.001{
            valueString = "\(value * 1000) mg"
        }
        else {
            valueString = "\(value * 1000000) µm"
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
        
        UserNutritionalNeeds.dataValue.append(("Total Calories", Float(HomeScreenFormat.selectedAgeGroup?.totalCaluries ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Water", Float(HomeScreenFormat.selectedAgeGroup?.water ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Protiens", Float(HomeScreenFormat.selectedAgeGroup?.proteins ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Vitamin C", Float(HomeScreenFormat.selectedAgeGroup?.vitaminC ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Iron", Float(HomeScreenFormat.selectedAgeGroup?.iron ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Calcium", Float(HomeScreenFormat.selectedAgeGroup?.calcium ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Potassium", Float(HomeScreenFormat.selectedAgeGroup?.potassium ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Fat", Float(HomeScreenFormat.selectedAgeGroup?.fat ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Fiber", Float(HomeScreenFormat.selectedAgeGroup?.fiber ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Magnesium", Float(HomeScreenFormat.selectedAgeGroup?.magnesium ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Vitamin B6", Float(HomeScreenFormat.selectedAgeGroup?.vitaminB2 ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Vitamin B2", Float(HomeScreenFormat.selectedAgeGroup?.vitaminB2 ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Vitamin A", Float(HomeScreenFormat.selectedAgeGroup?.vitaminA ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Zinc", Float(HomeScreenFormat.selectedAgeGroup?.zinc ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Copper", Float(HomeScreenFormat.selectedAgeGroup?.copper ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Manganese", Float(HomeScreenFormat.selectedAgeGroup?.manganese ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Phosphorus", Float(HomeScreenFormat.selectedAgeGroup?.phosphorus ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Sodium", Float(HomeScreenFormat.selectedAgeGroup?.sodium ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Sugar", Float(HomeScreenFormat.selectedAgeGroup?.sugar ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Sulfer", Float(HomeScreenFormat.selectedAgeGroup?.sulfer ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Vitamin E", Float(HomeScreenFormat.selectedAgeGroup?.vitaminE ?? 0.0)))
        UserNutritionalNeeds.dataValue.append(("Vitamin K", Float(HomeScreenFormat.selectedAgeGroup?.vitaminK ?? 0.0)))

    }

    
    
    
    
}
