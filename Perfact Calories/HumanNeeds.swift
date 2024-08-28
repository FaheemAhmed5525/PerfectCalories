//
//  HumanNeeds.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 27/08/2024.
//

import UIKit

class NeedGroup {
    let minAge: Int                 //low value of range in seconds
    let maxAge: Int                 //high value of range in senconds
//    let minWeight: Float               //low weight value of group's weight in KGram
//    let maxWeight: Float                //hight weight value of group's weight in KGram
    let totalCaluries: Float        //following are nutritional needs for that age group
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
    
    init(minAgeYears: Float, maxAgeYears: Float, minAgeMonths: Float, maxAgeMonths: Float, totalCaluries: Float, totalMinerals: Float, carbohydrates: Float, water: Float, proteins: Float, vitaminC: Float, iron: Float, calcium: Float, potassium: Float, fat: Float, fiber: Float, magnesium: Float, vitaminB6: Float, vitaminB2: Float, vitaminA: Float, zinc: Float, copper: Float, manganese: Float, phosphorus: Float, sodium: Float, sugar: Float, sulfer: Float, vitaminE: Float, vitaminK: Float) {
        
        //here year and months are converted to seconds and then stored
        
        self.minAge = Int(((minAgeYears * 31557600) + (minAgeMonths * 2626560)))
        self.maxAge = Int(((maxAgeYears * 31557600) + (maxAgeMonths * 2626560)))
        
        
        self.totalCaluries = totalCaluries
        self.totalMinerals = totalMinerals
        self.carbohydrates = carbohydrates
        self.water = water
        self.proteins = proteins
        self.vitaminC = vitaminC
        self.iron = iron
        self.calcium = calcium
        self.potassium = potassium
        self.fat = fat
        self.fiber = fiber
        self.magnesium = magnesium
        self.vitaminB6 = vitaminB6
        self.vitaminB2 = vitaminB2
        self.vitaminA = vitaminA
        self.zinc = zinc
        self.copper = copper
        self.manganese = manganese
        self.phosphorus = phosphorus
        self.sodium = sodium
        self.sugar = sugar
        self.sulfer = sulfer
        self.vitaminE = vitaminE
        self.vitaminK = vitaminK
    }
}


struct HumanNeeds {

   
    var ageGroups: [NeedGroup] = []
    var ageGroup: NeedGroup
    
    init() {
        
        ageGroup  = NeedGroup(
            minAgeYears: 0,
            maxAgeYears: 0,
            minAgeMonths: 0,
            maxAgeMonths: 0.5,
            totalCaluries: 350,
            totalMinerals: 0.3,
            carbohydrates: 20.0,
            water: 250.0,
            proteins: 3.5,
            vitaminC: 0.001,
            iron: 0.0003,
            calcium: 0.07,
            potassium: 0.2,
            fat: 6.0,
            fiber: 0.0,
            magnesium: 0.003,
            vitaminB6: 0.00002,
            vitaminB2: 0.00002,
            vitaminA: 0.000005,
            zinc: 0.0001,
            copper: 0.00002,
            manganese: 0.00003,
            phosphorus: 0.01,
            sodium: 0.05,
            sugar: 0.5,
            sulfer: 0.0,
            vitaminE: 0.0001,
            vitaminK: 0.0000005
        )
        ageGroups.append(ageGroup)
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 0,
            maxAgeYears: 0,
            minAgeMonths: 0.5,
            maxAgeMonths: 1,
            totalCaluries: 400,
            totalMinerals: 0.4,
            carbohydrates: 25.0,
            water: 300.0,
            proteins: 4.5,
            vitaminC: 0.001,
            iron: 0.0005,
            calcium: 0.1,
            potassium: 0.3,
            fat: 8.0,
            fiber: 0.0,
            magnesium: 0.005,
            vitaminB6: 0.00003,
            vitaminB2: 0.00003,
            vitaminA: 0.00001,
            zinc: 0.0002,
            copper: 0.00003,
            manganese: 0.00005,
            phosphorus: 0.02,
            sodium: 0.1,
            sugar: 1.0,
            sulfer: 0.0,
            vitaminE: 0.0002,
            vitaminK: 0.000001
        )
        ageGroups.append(ageGroup)
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 0,
            maxAgeYears: 0,
            minAgeMonths: 1,
            maxAgeMonths: 2,
            totalCaluries: 450,
            totalMinerals: 0.5,
            carbohydrates: 30.0,
            water: 400.0,
            proteins: 5.0,
            vitaminC: 0.002,
            iron: 0.001,
            calcium: 0.15,
            potassium: 0.4,
            fat: 10.0,
            fiber: 0.0,
            magnesium: 0.01,
            vitaminB6: 0.00005,
            vitaminB2: 0.00005,
            vitaminA: 0.00002,
            zinc: 0.0003,
            copper: 0.00005,
            manganese: 0.0001,
            phosphorus: 0.05,
            sodium: 0.2,
            sugar: 2.0,
            sulfer: 0.0,
            vitaminE: 0.0005,
            vitaminK: 0.000002
        )
        ageGroups.append(ageGroup)
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 0,
            maxAgeYears: 0,
            minAgeMonths: 2,
            maxAgeMonths: 4,
            totalCaluries: 500,
            totalMinerals: 0.6,
            carbohydrates: 40.0,
            water: 500.0,
            proteins: 6.0,
            vitaminC: 0.003,
            iron: 0.002,
            calcium: 0.2,
            potassium: 0.6,
            fat: 15.0,
            fiber: 0.0,
            magnesium: 0.02,
            vitaminB6: 0.0001,
            vitaminB2: 0.0001,
            vitaminA: 0.00005,
            zinc: 0.0005,
            copper: 0.0001,
            manganese: 0.0003,
            phosphorus: 0.1,
            sodium: 0.3,
            sugar: 5.0,
            sulfer: 0.0,
            vitaminE: 0.001,
            vitaminK: 0.000005
        )
        ageGroups.append(ageGroup)
        
        ageGroup  = NeedGroup(
            minAgeYears: 0,
            maxAgeYears: 0,
            minAgeMonths: 4,
            maxAgeMonths: 6,
            totalCaluries: 600,
            totalMinerals: 0.8,
            carbohydrates: 60.0,
            water: 600.0,
            proteins: 8.0,
            vitaminC: 0.005,
            iron: 0.004,
            calcium: 0.3,
            potassium: 0.9,
            fat: 20.0,
            fiber: 5.0,
            magnesium: 0.03,
            vitaminB6: 0.0002,
            vitaminB2: 0.0002,
            vitaminA: 0.0001,
            zinc: 0.001,
            copper: 0.0002,
            manganese: 0.0006,
            phosphorus: 0.15,
            sodium: 0.5,
            sugar: 5.0,
            sulfer: 0.0,
            vitaminE: 0.002,
            vitaminK: 0.00001
        )
        ageGroups.append(ageGroup)
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 0,
            maxAgeYears: 0,
            minAgeMonths: 6,
            maxAgeMonths: 9,
            totalCaluries: 700,
            totalMinerals: 1.0,
            carbohydrates: 85.0,
            water: 700.0,
            proteins: 9.0,
            vitaminC: 0.008,
            iron: 0.005,
            calcium: 0.4,
            potassium: 1.2,
            fat: 25.0,
            fiber: 10.0,
            magnesium: 0.04,
            vitaminB6: 0.0003,
            vitaminB2: 0.0003,
            vitaminA: 0.0002,
            zinc: 0.0015,
            copper: 0.0003,
            manganese: 0.0008,
            phosphorus: 0.2,
            sodium: 0.6,
            sugar: 10.0,
            sulfer: 0.0,
            vitaminE: 0.003,
            vitaminK: 0.000015
        )
        ageGroups.append(ageGroup)
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 0,
            maxAgeYears: 1,
            minAgeMonths: 9,
            maxAgeMonths: 12,
            totalCaluries: 800,
            totalMinerals: 1.2,
            carbohydrates: 95.0,
            water: 800.0,
            proteins: 10.0,
            vitaminC: 0.010,
            iron: 0.007,
            calcium: 0.5,
            potassium: 1.5,
            fat: 30.0,
            fiber: 15.0,
            magnesium: 0.05,
            vitaminB6: 0.0004,
            vitaminB2: 0.0004,
            vitaminA: 0.0003,
            zinc: 0.002,
            copper: 0.0003,
            manganese: 0.001,
            phosphorus: 0.25,
            sodium: 0.7,
            sugar: 15.0,
            sulfer: 0.0,
            vitaminE: 0.004,
            vitaminK: 0.00002
        )
        ageGroups.append(ageGroup)
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 1,
            maxAgeYears: 1,
            minAgeMonths: 0,
            maxAgeMonths: 6,
            totalCaluries: 900,
            totalMinerals: 1.5,
            carbohydrates: 110.0,
            water: 900.0,
            proteins: 11.0,
            vitaminC: 0.015,
            iron: 0.007,
            calcium: 0.6,
            potassium: 2.0,
            fat: 30.0,
            fiber: 17.0,
            magnesium: 0.06,
            vitaminB6: 0.0005,
            vitaminB2: 0.0005,
            vitaminA: 0.0003,
            zinc: 0.0025,
            copper: 0.0004,
            manganese: 0.0012,
            phosphorus: 0.3,
            sodium: 0.8,
            sugar: 20.0,
            sulfer: 0.0,
            vitaminE: 0.005,
            vitaminK: 0.00002
        )
        ageGroups.append(ageGroup)
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 1,
            maxAgeYears: 2,
            minAgeMonths: 6,
            maxAgeMonths: 24,
            totalCaluries: 1000,
            totalMinerals: 1.8,
            carbohydrates: 130.0,
            water: 1000.0,
            proteins: 12.0,
            vitaminC: 0.020,
            iron: 0.008,
            calcium: 0.7,
            potassium: 2.5,
            fat: 35.0,
            fiber: 18.0,
            magnesium: 0.07,
            vitaminB6: 0.0006,
            vitaminB2: 0.0006,
            vitaminA: 0.0004,
            zinc: 0.003,
            copper: 0.0005,
            manganese: 0.0015,
            phosphorus: 0.35,
            sodium: 0.9,
            sugar: 25.0,
            sulfer: 0.0,
            vitaminE: 0.006,
            vitaminK: 0.00003
        )
        ageGroups.append(ageGroup)
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 2,
            maxAgeYears: 4,
            minAgeMonths: 24,
            maxAgeMonths: 48,
            totalCaluries: 1300,
            totalMinerals: 2.5,
            carbohydrates: 150.0,
            water: 1300.0,
            proteins: 15.0,
            vitaminC: 0.025,
            iron: 0.010,
            calcium: 0.9,
            potassium: 3.0,
            fat: 40.0,
            fiber: 20.0,
            magnesium: 0.10,
            vitaminB6: 0.0008,
            vitaminB2: 0.0008,
            vitaminA: 0.0005,
            zinc: 0.004,
            copper: 0.0007,
            manganese: 0.0020,
            phosphorus: 0.40,
            sodium: 1.0,
            sugar: 30.0,
            sulfer: 0.0,
            vitaminE: 0.007,
            vitaminK: 0.00005
        )
        ageGroups.append(ageGroup)
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 4,
            maxAgeYears: 6,
            minAgeMonths: 0,
            maxAgeMonths: 0,
            totalCaluries: 1600,
            totalMinerals: 2.5,
            carbohydrates: 150.0,
            water: 1300.0,
            proteins: 24.0,
            vitaminC: 0.025,
            iron: 0.010,
            calcium: 0.8,
            potassium: 3.8,
            fat: 50.0,
            fiber: 25.0,
            magnesium: 0.12,
            vitaminB6: 0.0006,
            vitaminB2: 0.0006,
            vitaminA: 0.0004,
            zinc: 0.005,
            copper: 0.0006,
            manganese: 0.0018,
            phosphorus: 0.55,
            sodium: 1.2,
            sugar: 30.0,
            sulfer: 0.0,
            vitaminE: 0.009,
            vitaminK: 0.00004
        )
        ageGroups.append(ageGroup)
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 7,
            maxAgeYears: 9,
            minAgeMonths: 0,
            maxAgeMonths: 0,
            totalCaluries: 1800,
            totalMinerals: 3.0,
            carbohydrates: 180.0,
            water: 1600.0,
            proteins: 28.0,
            vitaminC: 0.025,
            iron: 0.010,
            calcium: 1.0,
            potassium: 4.0,
            fat: 60.0,
            fiber: 30.0,
            magnesium: 0.14,
            vitaminB6: 0.0007,
            vitaminB2: 0.0007,
            vitaminA: 0.0005,
            zinc: 0.006,
            copper: 0.0007,
            manganese: 0.0020,
            phosphorus: 0.65,
            sodium: 1.5,
            sugar: 35.0,
            sulfer: 0.0,
            vitaminE: 0.010,
            vitaminK: 0.00005
        )
        ageGroups.append(ageGroup)
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 10,
            maxAgeYears: 12,
            minAgeMonths: 0,
            maxAgeMonths: 0,
            totalCaluries: 2200,
            totalMinerals: 3.5,
            carbohydrates: 230.0,
            water: 2000.0,
            proteins: 34.0,
            vitaminC: 0.045,
            iron: 0.010,
            calcium: 1.3,
            potassium: 4.5,
            fat: 70.0,
            fiber: 35.0,
            magnesium: 0.15,
            vitaminB6: 0.001,
            vitaminB2: 0.001,
            vitaminA: 0.0006,
            zinc: 0.008,
            copper: 0.0008,
            manganese: 0.0025,
            phosphorus: 0.75,
            sodium: 1.8,
            sugar: 40.0,
            sulfer: 0.0,
            vitaminE: 0.012,
            vitaminK: 0.00006
        )
        ageGroups.append(ageGroup)
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 13,
            maxAgeYears: 15,
            minAgeMonths: 0,
            maxAgeMonths: 0,
            totalCaluries: 2500,
            totalMinerals: 4.0,
            carbohydrates: 270.0,
            water: 2200.0,
            proteins: 45.0,
            vitaminC: 0.065,
            iron: 0.015,
            calcium: 1.3,
            potassium: 4.7,
            fat: 80.0,
            fiber: 40.0,
            magnesium: 0.18,
            vitaminB6: 0.0013,
            vitaminB2: 0.0013,
            vitaminA: 0.0008,
            zinc: 0.010,
            copper: 0.0010,
            manganese: 0.0030,
            phosphorus: 0.85,
            sodium: 2.0,
            sugar: 50.0,
            sulfer: 0.0,
            vitaminE: 0.015,
            vitaminK: 0.00007
        )
        ageGroups.append(ageGroup)
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 16,
            maxAgeYears: 18,
            minAgeMonths: 0,
            maxAgeMonths: 0,
            totalCaluries: 2800,
            totalMinerals: 4.5,
            carbohydrates: 300.0,
            water: 2500.0,
            proteins: 50.0,
            vitaminC: 0.080,
            iron: 0.018,
            calcium: 1.3,
            potassium: 4.8,
            fat: 90.0,
            fiber: 40.0,
            magnesium: 0.20,
            vitaminB6: 0.0015,
            vitaminB2: 0.0015,
            vitaminA: 0.001,
            zinc: 0.011,
            copper: 0.0012,
            manganese: 0.0035,
            phosphorus: 0.90,
            sodium: 2.5,
            sugar: 60.0,
            sulfer: 0.0,
            vitaminE: 0.020,
            vitaminK: 0.00008
        )
        ageGroups.append(ageGroup)
        
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 18,
            maxAgeYears: 22,
            minAgeMonths: 0,
            maxAgeMonths: 0,
            totalCaluries: 2800,
            totalMinerals: 4.5,
            carbohydrates: 310.0,
            water: 2500.0,
            proteins: 50.0,
            vitaminC: 0.090,
            iron: 0.018,
            calcium: 1.0,
            potassium: 4.7,
            fat: 90.0,
            fiber: 40.0,
            magnesium: 0.22,
            vitaminB6: 0.0017,
            vitaminB2: 0.0017,
            vitaminA: 0.001,
            zinc: 0.012,
            copper: 0.0015,
            manganese: 0.0040,
            phosphorus: 0.90,
            sodium: 2.5,
            sugar: 60.0,
            sulfer: 0.0,
            vitaminE: 0.020,
            vitaminK: 0.00009
        )
        ageGroups.append(ageGroup)
        
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 23,
            maxAgeYears: 26,
            minAgeMonths: 0,
            maxAgeMonths: 0,
            totalCaluries: 2500,
            totalMinerals: 4.5,
            carbohydrates: 275.0,
            water: 2500.0,
            proteins: 55.0,
            vitaminC: 0.090,
            iron: 0.018,
            calcium: 1.0,
            potassium: 4.7,
            fat: 80.0,
            fiber: 30.0,
            magnesium: 0.22,
            vitaminB6: 0.0017,
            vitaminB2: 0.0017,
            vitaminA: 0.0009,
            zinc: 0.011,
            copper: 0.0015,
            manganese: 0.0035,
            phosphorus: 0.90,
            sodium: 2.3,
            sugar: 50.0,
            sulfer: 0.0,
            vitaminE: 0.015,
            vitaminK: 0.00008
        )
        ageGroups.append(ageGroup)
        
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 27,
            maxAgeYears: 32,
            minAgeMonths: 0,
            maxAgeMonths: 0,
            totalCaluries: 2500,
            totalMinerals: 4.5,
            carbohydrates: 275.0,
            water: 2500.0,
            proteins: 55.0,
            vitaminC: 0.090,
            iron: 0.018,
            calcium: 1.0,
            potassium: 4.7,
            fat: 80.0,
            fiber: 30.0,
            magnesium: 0.22,
            vitaminB6: 0.0017,
            vitaminB2: 0.0017,
            vitaminA: 0.0009,
            zinc: 0.011,
            copper: 0.0015,
            manganese: 0.0035,
            phosphorus: 0.90,
            sodium: 2.3,
            sugar: 50.0,
            sulfer: 0.0,
            vitaminE: 0.015,
            vitaminK: 0.00008
        )
        ageGroups.append(ageGroup)
        
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 33,
            maxAgeYears: 40,
            minAgeMonths: 0,
            maxAgeMonths: 0,
            totalCaluries: 2500,
            totalMinerals: 4.5,
            carbohydrates: 250.0,
            water: 2500.0,
            proteins: 55.0,
            vitaminC: 0.090,
            iron: 0.018,
            calcium: 1.0,
            potassium: 4.7,
            fat: 80.0,
            fiber: 30.0,
            magnesium: 0.22,
            vitaminB6: 0.0017,
            vitaminB2: 0.0017,
            vitaminA: 0.0009,
            zinc: 0.011,
            copper: 0.0015,
            manganese: 0.0035,
            phosphorus: 0.90,
            sodium: 2.3,
            sugar: 50.0,
            sulfer: 0.0,
            vitaminE: 0.015,
            vitaminK: 0.00008
        )
        ageGroups.append(ageGroup)
        
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 40,
            maxAgeYears: 50,
            minAgeMonths: 0,
            maxAgeMonths: 0,
            totalCaluries: 2300,
            totalMinerals: 4.5,
            carbohydrates: 250.0,
            water: 2500.0,
            proteins: 55.0,
            vitaminC: 0.090,
            iron: 0.018,
            calcium: 1.0,
            potassium: 4.7,
            fat: 70.0,
            fiber: 30.0,
            magnesium: 0.22,
            vitaminB6: 0.0017,
            vitaminB2: 0.0017,
            vitaminA: 0.0009,
            zinc: 0.011,
            copper: 0.0015,
            manganese: 0.0035,
            phosphorus: 0.90,
            sodium: 2.3,
            sugar: 50.0,
            sulfer: 0.0,
            vitaminE: 0.015,
            vitaminK: 0.00008
        )
        ageGroups.append(ageGroup)
        
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 51,
            maxAgeYears: 65,
            minAgeMonths: 0,
            maxAgeMonths: 0,
            totalCaluries: 2200,
            totalMinerals: 4.5,
            carbohydrates: 230.0,
            water: 2500.0,
            proteins: 55.0,
            vitaminC: 0.090,
            iron: 0.018,
            calcium: 1.2,
            potassium: 4.7,
            fat: 70.0,
            fiber: 30.0,
            magnesium: 0.22,
            vitaminB6: 0.0017,
            vitaminB2: 0.0017,
            vitaminA: 0.0009,
            zinc: 0.011,
            copper: 0.0015,
            manganese: 0.0035,
            phosphorus: 0.90,
            sodium: 2.3,
            sugar: 50.0,
            sulfer: 0.0,
            vitaminE: 0.015,
            vitaminK: 0.00008
        )
        ageGroups.append(ageGroup)
        
        
        
        ageGroup  = NeedGroup(
            minAgeYears: 65,
            maxAgeYears: 150,
            minAgeMonths: 0,
            maxAgeMonths: 0,
            totalCaluries: 2000,
            totalMinerals: 4.5,
            carbohydrates: 210.0,
            water: 2500.0,
            proteins: 60.0,
            vitaminC: 0.090,
            iron: 0.018,
            calcium: 1.2,
            potassium: 4.7,
            fat: 70.0,
            fiber: 30.0,
            magnesium: 0.22,
            vitaminB6: 0.0017,
            vitaminB2: 0.0017,
            vitaminA: 0.0009,
            zinc: 0.011,
            copper: 0.0015,
            manganese: 0.0035,
            phosphorus: 0.90,
            sodium: 2.3,
            sugar: 50.0,
            sulfer: 0.0,
            vitaminE: 0.015,
            vitaminK: 0.00008
        )
        ageGroups.append(ageGroup)
        
        
        
    }
    
    
}
