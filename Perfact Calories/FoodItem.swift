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
    let totalCalories: Float        //following indicatoin percentage with respect to 100 gram weight
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

    
    
    ///Parametrized initilizer
    init(Name: String, Type: String, Image: UIImage, Weight: Float, PrecribedPerWeek: String, TotalCaluries: Float, TotalMinerals: Float, Carbohydrates: Float, Water: Float, Proteins: Float, VitaminC: Float, Iron: Float, Calcium: Float, Potassium: Float, Fat: Float, Fiber: Float, Magnesium: Float, VitaminB6: Float, VitaminB2: Float, VitaminA: Float, Zinc: Float, Copper: Float, Manganese: Float, Phosphorus: Float, Sodium: Float, Sugar: Float, Sulfer: Float, VitaminE: Float, VitaminK: Float) {
        self.Name = Name
        self.type = Type
        self.Image = Image
        self.Weight = Weight
        self.prescribedPerWeek = PrecribedPerWeek
        self.totalCalories = TotalCaluries
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
    }
    

}

struct FoodItems {
    
   // var foodItem: FoodItem
    //array of food itmes
    var foodItems: [FoodItem] = []
    
//    //FoodItems
//    static let Apple = FoodItem(Name: "Apple", Type: "Fruits", Image: (UIImage(named: "Apple.png")) ?? .apple1, Weight: 100, PrecribedPerWeek: "5-7", TotalCaluries: 52, TotalMinerals: 0.135, Carbohydrates: 13.6, Water: 85.45, Proteins: 0.28, VitaminC: 4.63, Iron: 0.00012, Calcium: 0.058, Potassium: 0.00011, Fat: 0.18, Fiber: 2.38, Magnesium: 0.0005, VitaminB6: 0.00004, VitaminB2: 0.00003, VitaminA: 0000003, Zinc: 0.00004, Copper: 0.00004, Manganese: 0.000036, Phosphorus: 0.012, Sodium: 0.001, Sugar: 10.3, Sulfer: 0, VitaminE: 0.017, VitaminK: 0.000002)
//    static let Apple2 = FoodItem(Name: "Apple2", Type: "Fruits", Image: (UIImage(named: "Apple.png")) ?? .apple1, Weight: 100, PrecribedPerWeek: "5-7", TotalCaluries: 51, TotalMinerals: 0.135, Carbohydrates: 13.6, Water: 85.45, Proteins: 0.28, VitaminC: 4.63, Iron: 0.00012, Calcium: 0.058, Potassium: 0.00011, Fat: 0.18, Fiber: 2.38, Magnesium: 0.0005, VitaminB6: 0.00004, VitaminB2: 0.00003, VitaminA: 0000003, Zinc: 0.00004, Copper: 0.00004, Manganese: 0.000036, Phosphorus: 0.012, Sodium: 0.001, Sugar: 10.3, Sulfer: 0, VitaminE: 0.017, VitaminK: 0.000002)
//    
    init() {
        foodItems.append(FoodItem(
            Name: "Apple",
            Type: "Fruits",
            Image: (UIImage(named: "Apple1.png")) ?? UIImage(named: "fruits.png") ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "5-7",
            TotalCaluries: 52,
            TotalMinerals: 0.135,
            Carbohydrates: 13.6,
            Water: 85.45,
            Proteins: 0.28,
            VitaminC: 4.63,
            Iron: 0.00012,
            Calcium: 0.058,
            Potassium: 0.00011,
            Fat: 0.18,
            Fiber: 2.38,
            Magnesium: 0.0005,
            VitaminB6: 0.00004,
            VitaminB2: 0.00003,
            VitaminA: 0000003,
            Zinc: 0.00004,
            Copper: 0.00004,
            Manganese: 0.000036,
            Phosphorus: 0.012,
            Sodium: 0.001,
            Sugar: 10.3,
            Sulfer: 0,
            VitaminE: 0.017, 
            VitaminK: 0.000002
        ))
        
        
        
        foodItems.append(FoodItem(
            Name: "Apricot",
            Type: "Fruits",
            Image: ((UIImage(named: "Apricot.png")) ?? UIImage(named: "fruits.png")) ?? .fruits,
            Weight: 35,
            PrecribedPerWeek: "5-7",
            TotalCaluries: 17,
            TotalMinerals: 0.03,
            Carbohydrates: 4.2,
            Water: 0.088,
            Proteins: 0.5,
            VitaminC: 0.0042,
            Iron: 0.0001,
            Calcium: 0.007,
            Potassium: 0.091,
            Fat: 0.1,
            Fiber: 0.7,
            Magnesium: 0.01,
            VitaminB6: 0.01,
            VitaminB2: 0.01,
            VitaminA: 0.00049,
            Zinc: 0.0001,
            Copper: 0.0001,
            Manganese: 0.00005,
            Phosphorus: 0.00002,
            Sodium: 0.0001,
            Sugar: 0.0039,
            Sulfer: 0,
            VitaminE: 0.0001,
            VitaminK: 0.0001
        ))


        foodItems.append(FoodItem(
            Name: "Avocado",
            Type: "Fruits",
            Image: (UIImage(named: "Avocado.png")) ?? .fruits,
            Weight: 150,
            PrecribedPerWeek: "3-4",
            TotalCaluries: 240,
            TotalMinerals: 0.12,
            Carbohydrates: 12.8,
            Water: 0.73,
            Proteins: 3.0,
            VitaminC: 0.00001,
            Iron: 0.00055,
            Calcium: 0.012,
            Potassium: 0.485,
            Fat: 22,
            Fiber: 10,
            Magnesium: 0.029,
            VitaminB6: 0.00029,
            VitaminB2: 0.0002,
            VitaminA: 0.000146,
            Zinc: 0.00064,
            Copper: 0.00019,
            Manganese: 0.00014,
            Phosphorus: 0.034,
            Sodium: 0.007,
            Sugar: 0.2,
            Sulfer: 0,
            VitaminE: 0.00207,
            VitaminK: 0.000021
        ))


        foodItems.append(FoodItem(
            Name: "Banana",
            Type: "Fruits",
            Image: (UIImage(named: "Banana.png")) ?? .fruits,
            Weight: 120,
            PrecribedPerWeek: "7-10",
            TotalCaluries: 105,
            TotalMinerals: 0.15,
            Carbohydrates: 27,
            Water: 0.74,
            Proteins: 1.3,
            VitaminC: 0.0087,
            Iron: 0.0003,
            Calcium: 0.006,
            Potassium: 0.422,
            Fat: 0.3,
            Fiber: 3.1,
            Magnesium: 0.032,
            VitaminB6: 0.0004,
            VitaminB2: 0.0001,
            VitaminA: 0.000064,
            Zinc: 0.00015,
            Copper: 0.0001,
            Manganese: 0.0003,
            Phosphorus: 0.026,
            Sodium: 0.001,
            Sugar: 14,
            Sulfer: 0,
            VitaminE: 0.0001,
            VitaminK: 0.0000005
        ))
        
        
        foodItems.append(FoodItem(
            Name: "Blackberry",
            Type: "Fruits",
            Image: (UIImage(named: "Blackberry.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "5-7",
            TotalCaluries: 43,
            TotalMinerals: 0.05,
            Carbohydrates: 9.6,
            Water: 0.88,
            Proteins: 1.4,
            VitaminC: 21.0 / 1000, // 21 mg converted to grams
            Iron: 0.62 / 1000,    // 0.62 mg converted to grams
            Calcium: 29 / 1000,   // 29 mg converted to grams
            Potassium: 162 / 1000, // 162 mg converted to grams
            Fat: 0.5,
            Fiber: 5.3,
            Magnesium: 0.03,
            VitaminB6: 0.01,
            VitaminB2: 0.01,
            VitaminA: 0.00003,
            Zinc: 0.29 / 1000,    // 0.29 mg converted to grams
            Copper: 0.1 / 1000,   // 0.1 mg converted to grams
            Manganese: 0.6 / 1000, // 0.6 mg converted to grams
            Phosphorus: 0.03,
            Sodium: 0.001,
            Sugar: 4.9,
            Sulfer: 0,
            VitaminE: 0.001,
            VitaminK: 0.001
        ))


        foodItems.append(FoodItem(
            Name: "Blackcurrant",
            Type: "Fruits",
            Image: (UIImage(named: "Blackcurrant.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "5-7",
            TotalCaluries: 63,
            TotalMinerals: 0.09,
            Carbohydrates: 15.4,
            Water: 0.81,
            Proteins: 1.0,
            VitaminC: 0.181,
            Iron: 0.001,
            Calcium: 0.055,
            Potassium: 0.322,
            Fat: 0.4,
            Fiber: 6.8,
            Magnesium: 0.03,
            VitaminB6: 0.02,
            VitaminB2: 0.01,
            VitaminA: 0.00005,
            Zinc: 0.0003,
            Copper: 0.0001,
            Manganese: 0.0005,
            Phosphorus: 0.04,
            Sodium: 0.001,
            Sugar: 8.6,
            Sulfer: 0,
            VitaminE: 0.001,
            VitaminK: 0.00002
        ))


        foodItems.append(FoodItem(
            Name: "Blueberry",
            Type: "Fruits",
            Image: (UIImage(named: "Blueberry.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "5-7",
            TotalCaluries: 57,
            TotalMinerals: 0.07,
            Carbohydrates: 14.5,
            Water: 0.84,
            Proteins: 0.7,
            VitaminC: 0.0097,
            Iron: 0.00028,
            Calcium: 0.006,
            Potassium: 0.077,
            Fat: 0.3,
            Fiber: 2.4,
            Magnesium: 0.03,
            VitaminB6: 0.01,
            VitaminB2: 0.01,
            VitaminA: 0.00003,
            Zinc: 0.00007,
            Copper: 0.00006,
            Manganese: 0.00005,
            Phosphorus: 0.01,
            Sodium: 0.001,
            Sugar: 9.7,
            Sulfer: 0,
            VitaminE: 0.0001,
            VitaminK: 0.0001
        ))


        foodItems.append(FoodItem(
            Name: "Boysenberry",
            Type: "Fruits",
            Image: (UIImage(named: "Boysenberry.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "5-7",
            TotalCaluries: 50,
            TotalMinerals: 0.08,
            Carbohydrates: 12.4,
            Water: 0.88,
            Proteins: 1.0,
            VitaminC: 0.021,
            Iron: 0.0006,
            Calcium: 0.029,
            Potassium: 0.215,
            Fat: 0.4,
            Fiber: 5.3,
            Magnesium: 0.02,
            VitaminB6: 0.01,
            VitaminB2: 0.01,
            VitaminA: 0.00004,
            Zinc: 0.00006,
            Copper: 0.00005,
            Manganese: 0.0003,
            Phosphorus: 0.02,
            Sodium: 0.001,
            Sugar: 9.0,
            Sulfer: 0,
            VitaminE: 0.0002,
            VitaminK: 0.0001
        ))


        foodItems.append(FoodItem(
            Name: "Capers",
            Type: "Vegetables",
            Image: (UIImage(named: "Capers.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "1-2",
            TotalCaluries: 23,
            TotalMinerals: 0.23,
            Carbohydrates: 4.4,
            Water: 0.82,
            Proteins: 2.4,
            VitaminC: 0.040,
            Iron: 0.005,
            Calcium: 0.01,
            Potassium: 0.28,
            Fat: 0.3,
            Fiber: 2.6,
            Magnesium: 0.03,
            VitaminB6: 0.01,
            VitaminB2: 0.01,
            VitaminA: 0.0001,
            Zinc: 0.001,
            Copper: 0.001,
            Manganese: 0.0005,
            Phosphorus: 0.02,
            Sodium: 0.07,
            Sugar: 0.3,
            Sulfer: 0,
            VitaminE: 0.0001,
            VitaminK: 0.0003
        ))


        foodItems.append(FoodItem(
            Name: "Cherimoya",
            Type: "Fruits",
            Image: (UIImage(named: "Cherimoya.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 75,
            TotalMinerals: 0.16,
            Carbohydrates: 19.7,
            Water: 0.82,
            Proteins: 1.5,
            VitaminC: 0.20,
            Iron: 0.0009,
            Calcium: 0.012,
            Potassium: 0.382,
            Fat: 0.3,
            Fiber: 3.0,
            Magnesium: 0.027,
            VitaminB6: 0.01,
            VitaminB2: 0.01,
            VitaminA: 0.00004,
            Zinc: 0.0003,
            Copper: 0.0002,
            Manganese: 0.0004,
            Phosphorus: 0.019,
            Sodium: 0.001,
            Sugar: 16.0,
            Sulfer: 0,
            VitaminE: 0.0001,
            VitaminK: 0.0001
        ))


        foodItems.append(FoodItem(
            Name: "Cherry",
            Type: "Fruits",
            Image: (UIImage(named: "Cherry.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "7-10",
            TotalCaluries: 63,
            TotalMinerals: 0.10,
            Carbohydrates: 16.0,
            Water: 0.82,
            Proteins: 1.0,
            VitaminC: 0.10,
            Iron: 0.0008,
            Calcium: 0.012,
            Potassium: 0.222,
            Fat: 0.2,
            Fiber: 2.1,
            Magnesium: 0.01,
            VitaminB6: 0.01,
            VitaminB2: 0.01,
            VitaminA: 0.00003,
            Zinc: 0.0002,
            Copper: 0.0001,
            Manganese: 0.0001,
            Phosphorus: 0.01,
            Sodium: 0.001,
            Sugar: 12.0,
            Sulfer: 0,
            VitaminE: 0.0001,
            VitaminK: 0.0001
        ))


        foodItems.append(FoodItem(
            Name: "Black Chokeberry",
            Type: "Fruits",
            Image: (UIImage(named: "BlackChokeberry.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "3-5",
            TotalCaluries: 50,
            TotalMinerals: 0.11,
            Carbohydrates: 12.0,
            Water: 0.83,
            Proteins: 1.0,
            VitaminC: 0.15,
            Iron: 0.001,
            Calcium: 0.014,
            Potassium: 0.290,
            Fat: 0.2,
            Fiber: 5.0,
            Magnesium: 0.03,
            VitaminB6: 0.02,
            VitaminB2: 0.01,
            VitaminA: 0.00005,
            Zinc: 0.0004,
            Copper: 0.0002,
            Manganese: 0.0006,
            Phosphorus: 0.03,
            Sodium: 0.001,
            Sugar: 8.0,
            Sulfer: 0,
            VitaminE: 0.0002,
            VitaminK: 0.0001
        ))


        foodItems.append(FoodItem(
            Name: "Cranberry",
            Type: "Fruits",
            Image: (UIImage(named: "Cranberry.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "5-7",
            TotalCaluries: 46,
            TotalMinerals: 0.10,
            Carbohydrates: 12.2,
            Water: 0.87,
            Proteins: 0.4,
            VitaminC: 0.14,
            Iron: 0.0006,
            Calcium: 0.008,
            Potassium: 0.080,
            Fat: 0.1,
            Fiber: 4.0,
            Magnesium: 0.02,
            VitaminB6: 0.01,
            VitaminB2: 0.01,
            VitaminA: 0.00002,
            Zinc: 0.0002,
            Copper: 0.0001,
            Manganese: 0.0003,
            Phosphorus: 0.01,
            Sodium: 0.001,
            Sugar: 4.0,
            Sulfer: 0,
            VitaminE: 0.0001,
            VitaminK: 0.0002
        ))

        foodItems.append(FoodItem(
            Name: "Date Palm",
            Type: "Fruits",
            Image: (UIImage(named: "DatePalm.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 282,
            TotalMinerals: 0.32,
            Carbohydrates: 75.0,
            Water: 0.21,
            Proteins: 2.5,
            VitaminC: 0.00,
            Iron: 0.9,
            Calcium: 0.064,
            Potassium: 0.696,
            Fat: 0.2,
            Fiber: 6.7,
            Magnesium: 0.054,
            VitaminB6: 0.0,
            VitaminB2: 0.0,
            VitaminA: 0.0001,
            Zinc: 0.0004,
            Copper: 0.0004,
            Manganese: 0.0006,
            Phosphorus: 0.06,
            Sodium: 0.001,
            Sugar: 66.0,
            Sulfer: 0,
            VitaminE: 0.0002,
            VitaminK: 0.0001
        ))


        foodItems.append(FoodItem(
            Name: "Durian",
            Type: "Fruits",
            Image: (UIImage(named: "Durian.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "1-2",
            TotalCaluries: 133,
            TotalMinerals: 0.35,
            Carbohydrates: 33.0,
            Water: 0.65,
            Proteins: 1.5,
            VitaminC: 0.19,
            Iron: 0.43,
            Calcium: 0.015,
            Potassium: 0.436,
            Fat: 5.3,
            Fiber: 2.0,
            Magnesium: 0.03,
            VitaminB6: 0.10,
            VitaminB2: 0.03,
            VitaminA: 0.00008,
            Zinc: 0.0004,
            Copper: 0.0004,
            Manganese: 0.0006,
            Phosphorus: 0.03,
            Sodium: 0.002,
            Sugar: 28.0,
            Sulfer: 0,
            VitaminE: 0.001,
            VitaminK: 0.0001
        ))



        foodItems.append(FoodItem(
            Name: "Elderberry",
            Type: "Fruits",
            Image: (UIImage(named: "Elderberry.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 73,
            TotalMinerals: 0.20,
            Carbohydrates: 18.4,
            Water: 0.82,
            Proteins: 0.6,
            VitaminC: 0.36,
            Iron: 0.0011,
            Calcium: 0.012,
            Potassium: 0.280,
            Fat: 0.2,
            Fiber: 7.0,
            Magnesium: 0.03,
            VitaminB6: 0.01,
            VitaminB2: 0.01,
            VitaminA: 0.00005,
            Zinc: 0.0003,
            Copper: 0.0002,
            Manganese: 0.0004,
            Phosphorus: 0.02,
            Sodium: 0.001,
            Sugar: 7.0,
            Sulfer: 0,
            VitaminE: 0.0002,
            VitaminK: 0.0001
        ))



        foodItems.append(FoodItem(
            Name: "Golden Berries",
            Type: "Fruits",
            Image: (UIImage(named: "GoldenBerries.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 53,
            TotalMinerals: 0.25,
            Carbohydrates: 12.3,
            Water: 0.89,
            Proteins: 1.0,
            VitaminC: 0.35,
            Iron: 0.0012,
            Calcium: 0.015,
            Potassium: 0.310,
            Fat: 0.1,
            Fiber: 5.5,
            Magnesium: 0.04,
            VitaminB6: 0.02,
            VitaminB2: 0.02,
            VitaminA: 0.00006,
            Zinc: 0.0004,
            Copper: 0.0003,
            Manganese: 0.0005,
            Phosphorus: 0.03,
            Sodium: 0.001,
            Sugar: 6.5,
            Sulfer: 0,
            VitaminE: 0.0003,
            VitaminK: 0.0002
        ))



        foodItems.append(FoodItem(
            Name: "Gooseberries",
            Type: "Fruits",
            Image: (UIImage(named: "Gooseberries.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 44,
            TotalMinerals: 0.30,
            Carbohydrates: 10.2,
            Water: 0.85,
            Proteins: 1.0,
            VitaminC: 0.27,
            Iron: 0.001,
            Calcium: 0.015,
            Potassium: 0.250,
            Fat: 0.1,
            Fiber: 4.0,
            Magnesium: 0.02,
            VitaminB6: 0.02,
            VitaminB2: 0.02,
            VitaminA: 0.00004,
            Zinc: 0.0003,
            Copper: 0.0002,
            Manganese: 0.0004,
            Phosphorus: 0.02,
            Sodium: 0.001,
            Sugar: 5.0,
            Sulfer: 0,
            VitaminE: 0.0001,
            VitaminK: 0.0002
        ))


        foodItems.append(FoodItem(
            Name: "Grapes",
            Type: "Fruits",
            Image: (UIImage(named: "Grapes.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 69,
            TotalMinerals: 0.20,
            Carbohydrates: 18.1,
            Water: 0.81,
            Proteins: 0.7,
            VitaminC: 0.10,
            Iron: 0.0004,
            Calcium: 0.010,
            Potassium: 0.160,
            Fat: 0.2,
            Fiber: 0.9,
            Magnesium: 0.007,
            VitaminB6: 0.001,
            VitaminB2: 0.003,
            VitaminA: 0.00001,
            Zinc: 0.0002,
            Copper: 0.0001,
            Manganese: 0.0003,
            Phosphorus: 0.017,
            Sodium: 0.002,
            Sugar: 15.5,
            Sulfer: 0,
            VitaminE: 0.0001,
            VitaminK: 0.0001
        ))



        foodItems.append(FoodItem(
            Name: "Grapefruit",
            Type: "Fruits",
            Image: (UIImage(named: "Grapefruit.png")) ?? .fruits,
            Weight: 240,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 100.8,
            TotalMinerals: 0.60,
            Carbohydrates: 25.2,
            Water: 2.11,
            Proteins: 1.9,
            VitaminC: 0.744,
            Iron: 0.00072,
            Calcium: 0.0288,
            Potassium: 0.324,
            Fat: 0.24,
            Fiber: 3.36,
            Magnesium: 0.036,
            VitaminB6: 0.048,
            VitaminB2: 0.048,
            VitaminA: 0.000048,
            Zinc: 0.00024,
            Copper: 0.00024,
            Manganese: 0.00048,
            Phosphorus: 0.036,
            Sodium: 0.0024,
            Sugar: 19.2,
            Sulfer: 0,
            VitaminE: 0.00024,
            VitaminK: 0.00012
        ))


        foodItems.append(FoodItem(
            Name: "Grapefruit",
            Type: "Fruits",
            Image: (UIImage(named: "Grapefruit.png")) ?? .fruits,
            Weight: 270,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 113.4,
            TotalMinerals: 0.675,
            Carbohydrates: 28.35,
            Water: 2.376,
            Proteins: 2.16,
            VitaminC: 0.837,
            Iron: 0.00081,
            Calcium: 0.0324,
            Potassium: 0.3645,
            Fat: 0.27,
            Fiber: 3.78,
            Magnesium: 0.0405,
            VitaminB6: 0.054,
            VitaminB2: 0.054,
            VitaminA: 0.000054,
            Zinc: 0.00027,
            Copper: 0.00027,
            Manganese: 0.000486,
            Phosphorus: 0.027,
            Sodium: 0.0027,
            Sugar: 21.6,
            Sulfer: 0,
            VitaminE: 0.00027,
            VitaminK: 0.000135
        ))


        foodItems.append(FoodItem(
            Name: "Jackfruit",
            Type: "Fruits",
            Image: (UIImage(named: "Jackfruit.png")) ?? .fruits,
            Weight: 15000,
            PrecribedPerWeek: "1-2",
            TotalCaluries: 1500,
            TotalMinerals: 15.00,
            Carbohydrates: 3750,
            Water: 12750,
            Proteins: 150,
            VitaminC: 45.0,
            Iron: 0.015,
            Calcium: 1.80,
            Potassium: 3.00,
            Fat: 15,
            Fiber: 75,
            Magnesium: 0.90,
            VitaminB6: 0.30,
            VitaminB2: 0.30,
            VitaminA: 0.0003,
            Zinc: 0.0015,
            Copper: 0.0015,
            Manganese: 0.003,
            Phosphorus: 0.30,
            Sodium: 0.015,
            Sugar: 2250,
            Sulfer: 0,
            VitaminE: 0.0015,
            VitaminK: 0.00075
        ))


        foodItems.append(FoodItem(
            Name: "Jackfruit",
            Type: "Fruits",
            Image: (UIImage(named: "Jackfruit.png")) ?? .fruits,
            Weight: 1000,
            PrecribedPerWeek: "3-4",  // Adjusted for a more typical weekly consumption
            TotalCaluries: 500,
            TotalMinerals: 1.00,
            Carbohydrates: 1250,
            Water: 850,
            Proteins: 10,
            VitaminC: 3.0,
            Iron: 0.001,
            Calcium: 0.12,
            Potassium: 0.20,
            Fat: 1,
            Fiber: 5,
            Magnesium: 0.06,
            VitaminB6: 0.02,
            VitaminB2: 0.02,
            VitaminA: 0.00002,
            Zinc: 0.0001,
            Copper: 0.0001,
            Manganese: 0.0002,
            Phosphorus: 0.02,
            Sodium: 0.001,
            Sugar: 150,
            Sulfer: 0,
            VitaminE: 0.0001,
            VitaminK: 0.00005
        ))



        foodItems.append(FoodItem(
            Name: "Jujube",
            Type: "Fruits",
            Image: (UIImage(named: "Jujube.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 79,
            TotalMinerals: 0.45,
            Carbohydrates: 20.0,
            Water: 0.80,
            Proteins: 1.2,
            VitaminC: 0.7,
            Iron: 0.001,
            Calcium: 0.026,
            Potassium: 0.25,
            Fat: 0.2,
            Fiber: 6.0,
            Magnesium: 0.05,
            VitaminB6: 0.02,
            VitaminB2: 0.02,
            VitaminA: 0.00002,
            Zinc: 0.0004,
            Copper: 0.0003,
            Manganese: 0.0005,
            Phosphorus: 0.03,
            Sodium: 0.002,
            Sugar: 18.0,
            Sulfer: 0,
            VitaminE: 0.0002,
            VitaminK: 0.0001
        ))




        foodItems.append(FoodItem(
            Name: "Kiwi",
            Type: "Fruits",
            Image: (UIImage(named: "Kiwi.png")) ?? .fruits,
            Weight: 84,
            PrecribedPerWeek: "4-5",
            TotalCaluries: 50.4,
            TotalMinerals: 0.17,
            Carbohydrates: 11.6,
            Water: 0.78,
            Proteins: 0.84,
            VitaminC: 0.28,
            Iron: 0.0004,
            Calcium: 0.0102,
            Potassium: 0.163,
            Fat: 0.17,
            Fiber: 1.0,
            Magnesium: 0.0084,
            VitaminB6: 0.0168,
            VitaminB2: 0.014,
            VitaminA: 0.00004,
            Zinc: 0.00028,
            Copper: 0.00016,
            Manganese: 0.00034,
            Phosphorus: 0.014,
            Sodium: 0.0014,
            Sugar: 9.48,
            Sulfer: 0,
            VitaminE: 0.00017,
            VitaminK: 0.00007
        ))



        foodItems.append(FoodItem(
            Name: "Lemon",
            Type: "Fruits",
            Image: (UIImage(named: "Lemon.png")) ?? .fruits,
            Weight: 125,
            PrecribedPerWeek: "1-2",
            TotalCaluries: 36.25,
            TotalMinerals: 0.375,
            Carbohydrates: 11.625,
            Water: 1.1125,
            Proteins: 1.375,
            VitaminC: 0.6625,
            Iron: 0.00075,
            Calcium: 0.0325,
            Potassium: 0.1725,
            Fat: 0.375,
            Fiber: 3.5,
            Magnesium: 0.0125,
            VitaminB6: 0.025,
            VitaminB2: 0.025,
            VitaminA: 0.0000375,
            Zinc: 0.000125,
            Copper: 0.00025,
            Manganese: 0.0005,
            Phosphorus: 0.025,
            Sodium: 0.00125,
            Sugar: 3.125,
            Sulfer: 0,
            VitaminE: 0.000125,
            VitaminK: 0.000125
        ))


        foodItems.append(FoodItem(
            Name: "Lime",
            Type: "Fruits",
            Image: (UIImage(named: "Lime.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "3-4",
            TotalCaluries: 30,
            TotalMinerals: 0.32,
            Carbohydrates: 7.0,
            Water: 0.88,
            Proteins: 0.7,
            VitaminC: 0.29,
            Iron: 0.0006,
            Calcium: 0.033,
            Potassium: 0.20,
            Fat: 0.2,
            Fiber: 2.8,
            Magnesium: 0.01,
            VitaminB6: 0.02,
            VitaminB2: 0.02,
            VitaminA: 0.00003,
            Zinc: 0.0001,
            Copper: 0.0002,
            Manganese: 0.0004,
            Phosphorus: 0.02,
            Sodium: 0.001,
            Sugar: 1.8,
            Sulfer: 0,
            VitaminE: 0.0001,
            VitaminK: 0.0001
        ))



        foodItems.append(FoodItem(
            Name: "Longan",
            Type: "Fruits",
            Image: (UIImage(named: "Longan.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 60,
            TotalMinerals: 0.40,
            Carbohydrates: 15.0,
            Water: 0.81,
            Proteins: 1.1,
            VitaminC: 0.84,
            Iron: 0.0009,
            Calcium: 0.029,
            Potassium: 0.22,
            Fat: 0.1,
            Fiber: 1.0,
            Magnesium: 0.05,
            VitaminB6: 0.03,
            VitaminB2: 0.02,
            VitaminA: 0.00004,
            Zinc: 0.0003,
            Copper: 0.0003,
            Manganese: 0.0005,
            Phosphorus: 0.025,
            Sodium: 0.001,
            Sugar: 15.0,
            Sulfer: 0,
            VitaminE: 0.0002,
            VitaminK: 0.0001
        ))



        foodItems.append(FoodItem(
            Name: "Lychee",
            Type: "Fruits",
            Image: (UIImage(named: "Lychee.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "3-4",
            TotalCaluries: 66,
            TotalMinerals: 0.45,
            Carbohydrates: 16.5,
            Water: 0.81,
            Proteins: 0.8,
            VitaminC: 71.0,
            Iron: 0.0008,
            Calcium: 0.018,
            Potassium: 0.17,
            Fat: 0.4,
            Fiber: 1.3,
            Magnesium: 0.07,
            VitaminB6: 0.02,
            VitaminB2: 0.02,
            VitaminA: 0.00002,
            Zinc: 0.0002,
            Copper: 0.0003,
            Manganese: 0.0004,
            Phosphorus: 0.02,
            Sodium: 0.001,
            Sugar: 15.0,
            Sulfer: 0,
            VitaminE: 0.0001,
            VitaminK: 0.0001
        ))


        foodItems.append(FoodItem(
            Name: "Mango",
            Type: "Fruits",
            Image: (UIImage(named: "Mango.png")) ?? .fruits,
            Weight: 230,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 138,
            TotalMinerals: 0.575,
            Carbohydrates: 34.5,
            Water: 1.91,
            Proteins: 1.84,
            VitaminC: 83.72,
            Iron: 0.00046,
            Calcium: 0.0253,
            Potassium: 0.3864,
            Fat: 0.92,
            Fiber: 3.68,
            Magnesium: 0.23,
            VitaminB6: 0.161,
            VitaminB2: 0.046,
            VitaminA: 0.000092,
            Zinc: 0.00023,
            Copper: 0.00046,
            Manganese: 0.00092,
            Phosphorus: 0.046,
            Sodium: 0.0023,
            Sugar: 34.04,
            Sulfer: 0,
            VitaminE: 0.00069,
            VitaminK: 0.00023
        ))


        foodItems.append(FoodItem(
            Name: "Cantaloupe",
            Type: "Fruits",
            Image: (UIImage(named: "Cantaloupe.png")) ?? .fruits,
            Weight: 800,
            PrecribedPerWeek: "1-2",
            TotalCaluries: 256,
            TotalMinerals: 1.60,
            Carbohydrates: 64.0,
            Water: 7.12,
            Proteins: 4.0,
            VitaminC: 48.8,
            Iron: 0.0048,
            Calcium: 0.10,
            Potassium: 1.0,
            Fat: 1.6,
            Fiber: 6.4,
            Magnesium: 0.08,
            VitaminB6: 0.064,
            VitaminB2: 0.016,
            VitaminA: 0.00032,
            Zinc: 0.0008,
            Copper: 0.00064,
            Manganese: 0.00128,
            Phosphorus: 0.08,
            Sodium: 0.008,
            Sugar: 64.0,
            Sulfer: 0,
            VitaminE: 0.00128,
            VitaminK: 0.00064
        ))


        foodItems.append(FoodItem(
            Name: "Honeydew",
            Type: "Fruits",
            Image: (UIImage(named: "Honeydew.png")) ?? .fruits,
            Weight: 1000,
            PrecribedPerWeek: "1-2",
            TotalCaluries: 360,
            TotalMinerals: 2.00,
            Carbohydrates: 91.0,
            Water: 9.0,
            Proteins: 2.0,
            VitaminC: 50.0,
            Iron: 0.006,
            Calcium: 0.20,
            Potassium: 1.2,
            Fat: 0.8,
            Fiber: 8.0,
            Magnesium: 0.12,
            VitaminB6: 0.08,
            VitaminB2: 0.02,
            VitaminA: 0.0004,
            Zinc: 0.001,
            Copper: 0.0008,
            Manganese: 0.0016,
            Phosphorus: 0.12,
            Sodium: 0.01,
            Sugar: 91.0,
            Sulfer: 0,
            VitaminE: 0.0016,
            VitaminK: 0.0008
        ))



        foodItems.append(FoodItem(
            Name: "Watermelon",
            Type: "Fruits",
            Image: (UIImage(named: "Watermelon.png")) ?? .fruits,
            Weight: 5000,
            PrecribedPerWeek: "1-2",
            TotalCaluries: 1500,
            TotalMinerals: 5.00,
            Carbohydrates: 375.0,
            Water: 45.0,
            Proteins: 10.0,
            VitaminC: 250.0,
            Iron: 0.015,
            Calcium: 1.0,
            Potassium: 6.0,
            Fat: 4.0,
            Fiber: 20.0,
            Magnesium: 0.6,
            VitaminB6: 0.4,
            VitaminB2: 0.1,
            VitaminA: 0.002,
            Zinc: 0.005,
            Copper: 0.003,
            Manganese: 0.006,
            Phosphorus: 0.6,
            Sodium: 0.05,
            Sugar: 375.0,
            Sulfer: 0,
            VitaminE: 0.003,
            VitaminK: 0.001
        ))


        foodItems.append(FoodItem(
            Name: "Mulberry",
            Type: "Fruits",
            Image: (UIImage(named: "Mulberry.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 43,
            TotalMinerals: 0.50,
            Carbohydrates: 9.8,
            Water: 0.88,
            Proteins: 1.4,
            VitaminC: 36.4,
            Iron: 0.0018,
            Calcium: 0.11,
            Potassium: 0.20,
            Fat: 0.4,
            Fiber: 1.7,
            Magnesium: 0.07,
            VitaminB6: 0.04,
            VitaminB2: 0.03,
            VitaminA: 0.0001,
            Zinc: 0.0002,
            Copper: 0.0004,
            Manganese: 0.0007,
            Phosphorus: 0.04,
            Sodium: 0.002,
            Sugar: 8.0,
            Sulfer: 0,
            VitaminE: 0.0003,
            VitaminK: 0.0002
        ))


        foodItems.append(FoodItem(
            Name: "Nectarine",
            Type: "Fruits",
            Image: (UIImage(named: "Nectarine.png")) ?? .fruits,
            Weight: 180,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 72,
            TotalMinerals: 0.54,
            Carbohydrates: 18.0,
            Water: 1.45,
            Proteins: 1.6,
            VitaminC: 9.0,
            Iron: 0.0011,
            Calcium: 0.029,
            Potassium: 0.32,
            Fat: 0.3,
            Fiber: 2.8,
            Magnesium: 0.10,
            VitaminB6: 0.07,
            VitaminB2: 0.02,
            VitaminA: 0.00009,
            Zinc: 0.0002,
            Copper: 0.0003,
            Manganese: 0.0005,
            Phosphorus: 0.03,
            Sodium: 0.001,
            Sugar: 16.2,
            Sulfer: 0,
            VitaminE: 0.0002,
            VitaminK: 0.0001
        ))



        foodItems.append(FoodItem(
            Name: "Olive",
            Type: "Fruits",
            Image: (UIImage(named: "Olive.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "1-2",
            TotalCaluries: 115,
            TotalMinerals: 2.00,
            Carbohydrates: 6.0,
            Water: 0.80,
            Proteins: 0.8,
            VitaminC: 0.0,
            Iron: 0.0014,
            Calcium: 0.083,
            Potassium: 0.8,
            Fat: 10.0,
            Fiber: 3.0,
            Magnesium: 0.05,
            VitaminB6: 0.02,
            VitaminB2: 0.01,
            VitaminA: 0.00001,
            Zinc: 0.0002,
            Copper: 0.0004,
            Manganese: 0.0007,
            Phosphorus: 0.03,
            Sodium: 0.002,
            Sugar: 0.0,
            Sulfer: 0,
            VitaminE: 0.0005,
            VitaminK: 0.0001
        ))


        foodItems.append(FoodItem(
            Name: "Orange",
            Type: "Fruits",
            Image: (UIImage(named: "Orange.png")) ?? .fruits,
            Weight: 170,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 85,
            TotalMinerals: 0.57,
            Carbohydrates: 21.7,
            Water: 1.43,
            Proteins: 1.2,
            VitaminC: 51.2,
            Iron: 0.0013,
            Calcium: 0.020,
            Potassium: 0.26,
            Fat: 0.2,
            Fiber: 3.4,
            Magnesium: 0.10,
            VitaminB6: 0.03,
            VitaminB2: 0.02,
            VitaminA: 0.00006,
            Zinc: 0.0002,
            Copper: 0.0003,
            Manganese: 0.0005,
            Phosphorus: 0.03,
            Sodium: 0.001,
            Sugar: 16.0,
            Sulfer: 0,
            VitaminE: 0.0002,
            VitaminK: 0.0001
        ))



        foodItems.append(FoodItem(
            Name: "Papaya",
            Type: "Fruits",
            Image: (UIImage(named: "Papaya.png")) ?? .fruits,
            Weight: 750,
            PrecribedPerWeek: "1-2",
            TotalCaluries: 300,
            TotalMinerals: 1.88,
            Carbohydrates: 75.0,
            Water: 5.85,
            Proteins: 3.0,
            VitaminC: 112.5,
            Iron: 0.0056,
            Calcium: 0.19,
            Potassium: 1.2,
            Fat: 1.2,
            Fiber: 7.5,
            Magnesium: 0.22,
            VitaminB6: 0.09,
            VitaminB2: 0.03,
            VitaminA: 0.00015,
            Zinc: 0.0006,
            Copper: 0.0012,
            Manganese: 0.0024,
            Phosphorus: 0.11,
            Sodium: 0.0075,
            Sugar: 75.0,
            Sulfer: 0,
            VitaminE: 0.0012,
            VitaminK: 0.0006
        ))



        foodItems.append(FoodItem(
            Name: "Passion Fruit",
            Type: "Fruits",
            Image: (UIImage(named: "PassionFruit.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "1-2",
            TotalCaluries: 97,
            TotalMinerals: 0.8,
            Carbohydrates: 23.4,
            Water: 0.73,
            Proteins: 2.2,
            VitaminC: 30.0,
            Iron: 0.0035,
            Calcium: 0.12,
            Potassium: 0.56,
            Fat: 0.4,
            Fiber: 10.4,
            Magnesium: 0.12,
            VitaminB6: 0.05,
            VitaminB2: 0.02,
            VitaminA: 0.0001,
            Zinc: 0.0005,
            Copper: 0.0008,
            Manganese: 0.0014,
            Phosphorus: 0.05,
            Sodium: 0.001,
            Sugar: 11.0,
            Sulfer: 0,
            VitaminE: 0.0003,
            VitaminK: 0.0002
        ))


        foodItems.append(FoodItem(
            Name: "Pear",
            Type: "Fruits",
            Image: (UIImage(named: "Pear.png")) ?? .fruits,
            Weight: 200,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 102,
            TotalMinerals: 0.8,
            Carbohydrates: 27.0,
            Water: 1.64,
            Proteins: 0.4,
            VitaminC: 6.0,
            Iron: 0.0012,
            Calcium: 0.014,
            Potassium: 0.22,
            Fat: 0.2,
            Fiber: 5.0,
            Magnesium: 0.05,
            VitaminB6: 0.02,
            VitaminB2: 0.01,
            VitaminA: 0.00005,
            Zinc: 0.0001,
            Copper: 0.0002,
            Manganese: 0.0004,
            Phosphorus: 0.02,
            Sodium: 0.001,
            Sugar: 22.0,
            Sulfer: 0,
            VitaminE: 0.0001,
            VitaminK: 0.0001
        ))


        foodItems.append(FoodItem(
            Name: "Persimmon",
            Type: "Fruits",
            Image: (UIImage(named: "Persimmon.png")) ?? .fruits,
            Weight: 190,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 127,
            TotalMinerals: 1.30,
            Carbohydrates: 33.0,
            Water: 1.40,
            Proteins: 0.6,
            VitaminC: 13.4,
            Iron: 0.0025,
            Calcium: 0.09,
            Potassium: 0.25,
            Fat: 0.2,
            Fiber: 4.8,
            Magnesium: 0.08,
            VitaminB6: 0.03,
            VitaminB2: 0.01,
            VitaminA: 0.0001,
            Zinc: 0.0003,
            Copper: 0.0004,
            Manganese: 0.0008,
            Phosphorus: 0.04,
            Sodium: 0.002,
            Sugar: 31.4,
            Sulfer: 0,
            VitaminE: 0.0004,
            VitaminK: 0.0002
        ))


        foodItems.append(FoodItem(
            Name: "Pineapple",
            Type: "Fruits",
            Image: (UIImage(named: "Pineapple.png")) ?? .fruits,
            Weight: 1300,
            PrecribedPerWeek: "1-2",
            TotalCaluries: 650,
            TotalMinerals: 2.60,
            Carbohydrates: 169.0,
            Water: 10.73,
            Proteins: 1.9,
            VitaminC: 136.0,
            Iron: 0.0091,
            Calcium: 0.27,
            Potassium: 1.1,
            Fat: 1.3,
            Fiber: 13.0,
            Magnesium: 0.23,
            VitaminB6: 0.1,
            VitaminB2: 0.04,
            VitaminA: 0.00014,
            Zinc: 0.0013,
            Copper: 0.0026,
            Manganese: 0.0052,
            Phosphorus: 0.17,
            Sodium: 0.013,
            Sugar: 169.0,
            Sulfer: 0,
            VitaminE: 0.0016,
            VitaminK: 0.0008
        ))



        foodItems.append(FoodItem(
            Name: "Plum",
            Type: "Fruits",
            Image: (UIImage(named: "Plum.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 46,
            TotalMinerals: 0.30,
            Carbohydrates: 11.4,
            Water: 0.86,
            Proteins: 0.7,
            VitaminC: 9.5,
            Iron: 0.0003,
            Calcium: 0.015,
            Potassium: 0.19,
            Fat: 0.3,
            Fiber: 2.1,
            Magnesium: 0.09,
            VitaminB6: 0.02,
            VitaminB2: 0.01,
            VitaminA: 0.00002,
            Zinc: 0.0002,
            Copper: 0.0003,
            Manganese: 0.0006,
            Phosphorus: 0.02,
            Sodium: 0.001,
            Sugar: 9.0,
            Sulfer: 0,
            VitaminE: 0.0001,
            VitaminK: 0.0001
        ))



        foodItems.append(FoodItem(
            Name: "Pomegranate",
            Type: "Fruits",
            Image: (UIImage(named: "Pomegranate.png")) ?? .fruits,
            Weight: 300,
            PrecribedPerWeek: "1-2",
            TotalCaluries: 165,
            TotalMinerals: 2.40,
            Carbohydrates: 42.0,
            Water: 2.19,
            Proteins: 3.0,
            VitaminC: 16.5,
            Iron: 0.0075,
            Calcium: 0.18,
            Potassium: 0.73,
            Fat: 0.6,
            Fiber: 7.2,
            Magnesium: 0.18,
            VitaminB6: 0.08,
            VitaminB2: 0.03,
            VitaminA: 0.0001,
            Zinc: 0.001,
            Copper: 0.0015,
            Manganese: 0.0030,
            Phosphorus: 0.12,
            Sodium: 0.003,
            Sugar: 42.0,
            Sulfer: 0,
            VitaminE: 0.0010,
            VitaminK: 0.0005
        ))


        foodItems.append(FoodItem(
            Name: "Pomelo",
            Type: "Fruits",
            Image: (UIImage(named: "Pomelo.png")) ?? .fruits,
            Weight: 1400,
            PrecribedPerWeek: "1-2",
            TotalCaluries: 420,
            TotalMinerals: 2.50,
            Carbohydrates: 105.0,
            Water: 8.08,
            Proteins: 4.0,
            VitaminC: 140.0,
            Iron: 0.009,
            Calcium: 0.30,
            Potassium: 1.4,
            Fat: 0.6,
            Fiber: 14.0,
            Magnesium: 0.35,
            VitaminB6: 0.10,
            VitaminB2: 0.04,
            VitaminA: 0.0002,
            Zinc: 0.0010,
            Copper: 0.0020,
            Manganese: 0.0040,
            Phosphorus: 0.15,
            Sodium: 0.007,
            Sugar: 105.0,
            Sulfer: 0,
            VitaminE: 0.0015,
            VitaminK: 0.0008
        ))


        foodItems.append(FoodItem(
            Name: "Rambutan",
            Type: "Fruits",
            Image: (UIImage(named: "Rambutan.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 68,
            TotalMinerals: 0.4,
            Carbohydrates: 16.5,
            Water: 0.82,
            Proteins: 0.9,
            VitaminC: 20.0,
            Iron: 0.002,
            Calcium: 0.015,
            Potassium: 0.20,
            Fat: 0.2,
            Fiber: 0.9,
            Magnesium: 0.05,
            VitaminB6: 0.03,
            VitaminB2: 0.02,
            VitaminA: 0.0001,
            Zinc: 0.0001,
            Copper: 0.0002,
            Manganese: 0.0003,
            Phosphorus: 0.02,
            Sodium: 0.001,
            Sugar: 16.0,
            Sulfer: 0,
            VitaminE: 0.0002,
            VitaminK: 0.0001
        ))


        foodItems.append(FoodItem(
            Name: "Raspberry",
            Type: "Fruits",
            Image: (UIImage(named: "Raspberry.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 52,
            TotalMinerals: 1.1,
            Carbohydrates: 11.9,
            Water: 0.86,
            Proteins: 1.2,
            VitaminC: 26.2,
            Iron: 0.0010,
            Calcium: 0.025,
            Potassium: 0.22,
            Fat: 0.7,
            Fiber: 6.5,
            Magnesium: 0.02,
            VitaminB6: 0.03,
            VitaminB2: 0.02,
            VitaminA: 0.00005,
            Zinc: 0.0003,
            Copper: 0.0005,
            Manganese: 0.0015,
            Phosphorus: 0.03,
            Sodium: 0.001,
            Sugar: 4.4,
            Sulfer: 0,
            VitaminE: 0.0004,
            VitaminK: 0.0002
        ))


        foodItems.append(FoodItem(
            Name: "Redberry",
            Type: "Fruits",
            Image: (UIImage(named: "Redberry.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 57,
            TotalMinerals: 0.9,
            Carbohydrates: 14.0,
            Water: 0.84,
            Proteins: 0.8,
            VitaminC: 10.0,
            Iron: 0.0010,
            Calcium: 0.020,
            Potassium: 0.20,
            Fat: 0.2,
            Fiber: 4.0,
            Magnesium: 0.05,
            VitaminB6: 0.02,
            VitaminB2: 0.01,
            VitaminA: 0.00002,
            Zinc: 0.0003,
            Copper: 0.0002,
            Manganese: 0.0006,
            Phosphorus: 0.02,
            Sodium: 0.001,
            Sugar: 8.0,
            Sulfer: 0,
            VitaminE: 0.0003,
            VitaminK: 0.0001
        ))


        foodItems.append(FoodItem(
            Name: "Carambola",
            Type: "Fruits",
            Image: (UIImage(named: "Carambola.png")) ?? .fruits,
            Weight: 220,
            PrecribedPerWeek: "1-2",
            TotalCaluries: 66,
            TotalMinerals: 0.7,
            Carbohydrates: 15.4,
            Water: 1.60,
            Proteins: 1.0,
            VitaminC: 57.0,
            Iron: 0.0016,
            Calcium: 0.15,
            Potassium: 0.45,
            Fat: 0.2,
            Fiber: 3.8,
            Magnesium: 0.11,
            VitaminB6: 0.04,
            VitaminB2: 0.02,
            VitaminA: 0.0001,
            Zinc: 0.0003,
            Copper: 0.0004,
            Manganese: 0.0010,
            Phosphorus: 0.04,
            Sodium: 0.001,
            Sugar: 14.0,
            Sulfer: 0,
            VitaminE: 0.0002,
            VitaminK: 0.0001
        ))



        foodItems.append(FoodItem(
            Name: "Strawberry",
            Type: "Fruits",
            Image: (UIImage(named: "Strawberry.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 32,
            TotalMinerals: 0.6,
            Carbohydrates: 7.7,
            Water: 0.91,
            Proteins: 0.7,
            VitaminC: 58.8,
            Iron: 0.0007,
            Calcium: 0.016,
            Potassium: 0.15,
            Fat: 0.3,
            Fiber: 2.0,
            Magnesium: 0.02,
            VitaminB6: 0.02,
            VitaminB2: 0.01,
            VitaminA: 0.00005,
            Zinc: 0.0002,
            Copper: 0.0001,
            Manganese: 0.0006,
            Phosphorus: 0.02,
            Sodium: 0.001,
            Sugar: 4.9,
            Sulfer: 0,
            VitaminE: 0.0002,
            VitaminK: 0.0002
        ))


        foodItems.append(FoodItem(
            Name: "Tangerine",
            Type: "Fruits",
            Image: (UIImage(named: "Tangerine.png")) ?? .fruits,
            Weight: 140,
            PrecribedPerWeek: "2-3",
            TotalCaluries: 56,
            TotalMinerals: 0.7,
            Carbohydrates: 13.0,
            Water: 1.20,
            Proteins: 0.8,
            VitaminC: 48.0,
            Iron: 0.0010,
            Calcium: 0.022,
            Potassium: 0.22,
            Fat: 0.2,
            Fiber: 2.0,
            Magnesium: 0.05,
            VitaminB6: 0.03,
            VitaminB2: 0.01,
            VitaminA: 0.0001,
            Zinc: 0.0002,
            Copper: 0.0003,
            Manganese: 0.0007,
            Phosphorus: 0.03,
            Sodium: 0.001,
            Sugar: 12.0,
            Sulfer: 0,
            VitaminE: 0.0002,
            VitaminK: 0.0001
        ))


        foodItems.append(FoodItem(
            Name: "Ugli Orange",
            Type: "Fruits",
            Image: (UIImage(named: "UgliOrange.png")) ?? .fruits,
            Weight: 325,
            PrecribedPerWeek: "1-2",
            TotalCaluries: 143,
            TotalMinerals: 1.2,
            Carbohydrates: 37.0,
            Water: 2.68,
            Proteins: 1.2,
            VitaminC: 115.0,
            Iron: 0.0026,
            Calcium: 0.25,
            Potassium: 0.75,
            Fat: 0.3,
            Fiber: 6.0,
            Magnesium: 0.15,
            VitaminB6: 0.05,
            VitaminB2: 0.02,
            VitaminA: 0.0001,
            Zinc: 0.0003,
            Copper: 0.0004,
            Manganese: 0.0010,
            Phosphorus: 0.07,
            Sodium: 0.002,
            Sugar: 37.0,
            Sulfer: 0,
            VitaminE: 0.0003,
            VitaminK: 0.0002
        ))









        foodItems.append(FoodItem(
            Name: "Rhubarb",
            Type: "Vegetables",
            Image: (UIImage(named: "Rhubarb.png")) ?? .fruits,
            Weight: 100,
            PrecribedPerWeek: "1-2",
            TotalCaluries: 21,
            TotalMinerals: 1.4,
            Carbohydrates: 4.5,
            Water: 1.91,
            Proteins: 0.9,
            VitaminC: 8.0,
            Iron: 0.0010,
            Calcium: 0.035,
            Potassium: 0.26,
            Fat: 0.2,
            Fiber: 1.8,
            Magnesium: 0.03,
            VitaminB6: 0.02,
            VitaminB2: 0.01,
            VitaminA: 0.0001,
            Zinc: 0.0002,
            Copper: 0.0001,
            Manganese: 0.0004,
            Phosphorus: 0.01,
            Sodium: 0.001,
            Sugar: 1.0,
            Sulfer: 0,
            VitaminE: 0.0001,
            VitaminK: 0.0002
        ))


      
    }
    
    

    
    

}
