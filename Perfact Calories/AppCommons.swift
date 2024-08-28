//
//  AppCommons.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 19/08/2024.
//

import UIKit

class AppCommons: UIViewController {

    
    ///Colors to be used on the user login screen
    static let themeColor = CGColor(red: 5/255, green: 245/255, blue: 5/255, alpha: 1.0)
    static let themeColorOnTouch = CGColor(red: 105/255, green: 245/255, blue: 105/255, alpha: 1.0)
    static let appBackgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
    static let appBackgroundColor2 = UIColor(red: 245/255, green: 245/255, blue: 250/255, alpha: 1.0)
    static let itemsColor = UIColor(red: 10/255, green: 10/255, blue: 225/255, alpha: 1.0)
    static let textColor = UIColor(red: 10/255, green: 10/255, blue: 10/255, alpha: 1.0)
    static let textColor2 = UIColor(red: 254/255, green: 254/255, blue: 254/255, alpha: 1)
    static let textColor3 = UIColor(red: 25/255, green: 25/255, blue: 205/255, alpha: 1)
    static let borderColor = CGColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.6)
    static let lightBorderColor = CGColor(red: 180/255, green: 180/255, blue: 180/255, alpha: 1.0)
    
    //user variables to store data
    static var user = User()
    
    //instantiating the food item, all food item will be added to array by initilizer
    static let foods = FoodItems()

    
    
    
    
    static let appViewsController = ViewController()
    
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 60))
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = AppCommons.appBackgroundColor
        
        //adding all fooditems to the food item array
       // AppCommons.foods.addFoodItemsToArray()
    
        
    }
    
}


