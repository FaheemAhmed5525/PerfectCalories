//
//  AppCommons.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 19/08/2024.
//

import UIKit

class AppCommons: UIViewController {

    
    ///Colors to be used on the user login screen
    static var gradientColor1 = CGColor(red: 252/255, green: 40/255, blue: 40/255, alpha: 1.0)
    static var gradientColor2 = CGColor(red: 255/255, green: 245/255, blue: 195/255, alpha: 1.0)
    static var gradientColor3 = CGColor(red: 117/255, green: 133/255, blue: 252/255, alpha: 1.0)
    static var buttonsBackgroundColor = UIColor(red: 240/255, green: 200/255, blue: 200/255, alpha: 1.0)
    static let themeColor = CGColor(red: 170/255, green: 107/255, blue: 233/255, alpha: 1.0)
    static let textColor = UIColor(red: 10/255, green: 10/255, blue: 10/255, alpha: 1.0)
    static let textColor3 = UIColor(red: 25/255, green: 25/255, blue: 205/255, alpha: 1)
    static let borderColor = CGColor(red: 125/255, green: 125/255, blue: 125/255, alpha: 1.0)
    static let lightBorderColor = CGColor(red: 180/255, green: 180/255, blue: 180/255, alpha: 1.0)
    
    //user variables to store data
    static var user = User()
    
    //instantiating the food item, all food item will be added to array by initilizer
    static let foods = FoodItems()
    
    
    
    
    static let appViewsController = ViewController()
    
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 60))
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [AppCommons.gradientColor1, AppCommons.gradientColor2, AppCommons.gradientColor1
        ]
        view.layer.addSublayer(gradientLayer)
        
        //adding all fooditems to the food item array
       // AppCommons.foods.addFoodItemsToArray()
    
        
    }
    
}


