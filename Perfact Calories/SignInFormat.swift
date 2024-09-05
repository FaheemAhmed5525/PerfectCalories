//
//  SignInFormat.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 19/08/2024.
//

import UIKit

class SignInFormat: AppCommons {


    //screenLabel is to be displayed on the top of the screen
    let screenLabel = UILabel(frame: CGRect(x: 50, y: 50, width: 300, height: 100))
    
    //elementsBox contians UI elements
    let elementsBox = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(screenLabel)
        
        setupScreenLabel()

    }
    
    
    ///func setupScreenLabel customizes the screenLabel
    func setupScreenLabel() {
        view.addSubview(screenLabel)
        
        screenLabel.text = "Your Name"
        screenLabel.textColor = AppCommons.textColor3
        screenLabel.textAlignment = .center
        screenLabel.font = UIFont.boldSystemFont(ofSize: 32)

    }
    
    ///function setupElementsBox customizes the elementsBox
    func setupElementsBox() {
        view.addSubview(elementsBox)
        
        elementsBox.translatesAutoresizingMaskIntoConstraints = false
        elementsBox.layer.borderColor = AppCommons.themeColor
        elementsBox.layer.borderWidth = 2.0
        elementsBox.layer.cornerRadius = 12.0
        elementsBox.backgroundColor = .white
        NSLayoutConstraint.activate([
            elementsBox.widthAnchor.constraint(equalToConstant: 330),
            elementsBox.heightAnchor.constraint(equalToConstant: 350),
            elementsBox.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            elementsBox.centerYAnchor.constraint(equalTo: view.centerYAnchor)])
    }


}

