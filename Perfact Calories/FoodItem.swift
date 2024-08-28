//
//  FoodItem.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 21/08/2024.
//

import Foundation
import UIKit
class FoodItem {
    
    let Name: String                //name indicates the name of fooditem
    let type: String
    let Image: UIImage              //image contains an image of fooditem
    let Weight: Float               //amount in grams
    let prescribedPerWeek: String   //Amount of items prescribed in a week
    let totalCaluries: Float        //following indicatoin percentage with respect to 100 gram weight
    let totalMinerals: Float
    let carbohydrates: Float
    let water: Float
    let proteins: Float
    let vitaminC: Float
    let iron: Float
    let calcium: Float
    let potassium: Float
    let fat: Float
    let fiber: Float
    let magnesium: Float
    let vitaminB6: Float
    let vitaminB2: Float
    let vitaminA: Float
    let zinc: Float
    let copper: Float
    let manganese: Float
    let phosphorus: Float
    let sodium: Float
    let sugar: Float
    let sulfer: Float
    let vitaminE: Float
    let vitaminK: Float
    let clacium: Float

    
    
    ///Parametrized initilizer
    init(Name: String, Type: String, Image: UIImage, Weight: Float, PrecribedPerWeek: String, TotalCaluries: Float, TotalMinerals: Float, Carbohydrates: Float, Water: Float, Proteins: Float, VitaminC: Float, Iron: Float, Calcium: Float, Potassium: Float, Fat: Float, Fiber: Float, Magnesium: Float, VitaminB6: Float, VitaminB2: Float, VitaminA: Float, Zinc: Float, Copper: Float, Manganese: Float, Phosphorus: Float, Sodium: Float, Sugar: Float, Sulfer: Float, VitaminE: Float, VitaminK: Float, Clacium: Float) {
        self.Name = Name
        self.type = Type
        self.Image = Image
        self.Weight = Weight
        self.prescribedPerWeek = PrecribedPerWeek
        self.totalCaluries = TotalCaluries
        self.totalMinerals = TotalMinerals
        self.carbohydrates = Carbohydrates
        self.water = Water
        self.proteins = Proteins
        self.vitaminC = VitaminC
        self.iron = Iron
        self.calcium = Calcium
        self.potassium = Potassium
        self.fat = Fat
        self.fiber = Fiber
        self.magnesium = Magnesium
        self.vitaminB6 = VitaminB6
        self.vitaminB2 = VitaminB2
        self.vitaminA = VitaminA
        self.zinc = Zinc
        self.copper = Copper
        self.manganese = Manganese
        self.phosphorus = Phosphorus
        self.sodium = Sodium
        self.sugar = Sugar
        self.sulfer = Sulfer
        self.vitaminE = VitaminE
        self.vitaminK = VitaminK
        self.clacium = Clacium
    }
    

}

class FoodItems {
    
    //array of food itmes
    var foodItems: [FoodItem] = []
    
    //FoodItems
    static let Apple = FoodItem(Name: "Apple", Type: "Fruits", Image: (UIImage(named: "Apple.png")) ?? .apple1, Weight: 100, PrecribedPerWeek: "5-7", TotalCaluries: 52, TotalMinerals: 0.135, Carbohydrates: 13.6, Water: 85.45, Proteins: 0.28, VitaminC: 4.63, Iron: 0.00012, Calcium: 0.058, Potassium: 0.00011, Fat: 0.18, Fiber: 2.38, Magnesium: 0.0005, VitaminB6: 0.00004, VitaminB2: 0.00003, VitaminA: 0000003, Zinc: 0.00004, Copper: 0.00004, Manganese: 0.000036, Phosphorus: 0.012, Sodium: 0.001, Sugar: 10.3, Sulfer: 0, VitaminE: 0.017, VitaminK: 0.000002, Clacium: 0.0061)
    static let Apple2 = FoodItem(Name: "Apple2", Type: "Fruits", Image: (UIImage(named: "Apple.png")) ?? .apple1, Weight: 100, PrecribedPerWeek: "5-7", TotalCaluries: 51, TotalMinerals: 0.135, Carbohydrates: 13.6, Water: 85.45, Proteins: 0.28, VitaminC: 4.63, Iron: 0.00012, Calcium: 0.058, Potassium: 0.00011, Fat: 0.18, Fiber: 2.38, Magnesium: 0.0005, VitaminB6: 0.00004, VitaminB2: 0.00003, VitaminA: 0000003, Zinc: 0.00004, Copper: 0.00004, Manganese: 0.000036, Phosphorus: 0.012, Sodium: 0.001, Sugar: 10.3, Sulfer: 0, VitaminE: 0.017, VitaminK: 0.000002, Clacium: 0.0061)
    
    
    
    
    func addFoodItemsToArray() {
        foodItems.append(FoodItems.Apple)
        foodItems.append(FoodItems.Apple2)
        foodItems.append(FoodItems.Apple)
        foodItems.append(FoodItems.Apple2)
        foodItems.append(FoodItems.Apple)
        foodItems.append(FoodItems.Apple2)
        foodItems.append(FoodItems.Apple)
        foodItems.append(FoodItems.Apple2)
        foodItems.append(FoodItems.Apple)
        foodItems.append(FoodItems.Apple2)
        foodItems.append(FoodItems.Apple)
        foodItems.append(FoodItems.Apple2)
        foodItems.append(FoodItems.Apple)
        foodItems.append(FoodItems.Apple2)
        foodItems.append(FoodItems.Apple)
        foodItems.append(FoodItems.Apple2)
        foodItems.append(FoodItems.Apple)
        foodItems.append(FoodItems.Apple2)
        foodItems.append(FoodItems.Apple)
        foodItems.append(FoodItems.Apple2)
        foodItems.append(FoodItems.Apple)
        foodItems.append(FoodItems.Apple2)
        foodItems.append(FoodItems.Apple)
        foodItems.append(FoodItems.Apple2)
    }
    
    

}
