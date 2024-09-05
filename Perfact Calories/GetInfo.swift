//
//  GetInfo.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 19/08/2024.
//

import UIKit


class GetInfo: SignInFormat {

    //datePicker get userbirthDate
    let datePicker = UIDatePicker()
    
    //weightField get user's weight
    let weightField = UITextField()
    
    //errorLabel is displayed in case of invalid value
    let errorLabel = UILabel()
    
    //nextButton takes user to HomeScreen
    let nextButton = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScreenLabel()
        setupElementsBox()
    }
    
    
    override func setupElementsBox() {
        super.setupElementsBox()
        setupDatePicker()
        setupWeightInputField()
        setupErrorLabel()
        setupNextButton()
    }
    
    
    override func setupScreenLabel() {
        super.setupScreenLabel()
        screenLabel.text = "Welcome"
    }
    
    
    
    
    // setupDatePicker customize datePicker
    func setupDatePicker() {
        elementsBox.addSubview(datePicker)
        
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.setValue(UIColor.black, forKey: "textColor")
        datePicker.layer.borderWidth = 1.0
        datePicker.layer.borderColor = AppCommons.borderColor
        datePicker.layer.cornerRadius = 12.0
        datePicker.datePickerMode = .date
        datePicker.maximumDate = Date()
        
        NSLayoutConstraint.activate([
            datePicker.topAnchor.constraint(equalTo: elementsBox.topAnchor, constant: 12),
            datePicker.leadingAnchor.constraint(equalTo: elementsBox.leadingAnchor, constant: 12),
            datePicker.trailingAnchor.constraint(equalTo: elementsBox.trailingAnchor, constant: -12),
            datePicker.heightAnchor.constraint(equalTo: elementsBox.heightAnchor, multiplier: 2/5)])
    }
    
//    ///func setupWeightInputField customizes the weightField
//    func setupWeightInputField() {
//        elementsBox.addSubview(weightField)
//        
//        weightField.translatesAutoresizingMaskIntoConstraints = false
//        //clear defaults
//        weightField.borderStyle = .none
//        weightField.backgroundColor = .clear
//        
//        //setting paddng
//        weightField.leftView = paddingView
//        weightField.leftViewMode = .always
//        
//        weightField.layer.borderColor = AppCommons.themeColor
//        weightField.layer.cornerRadius = 6.0
//        weightField.layer.borderWidth = 1.5
//        weightField.placeholder = "Your Weight"
//        weightField.textAlignment = .center
//        weightField.textColor = AppCommons.textColor
//        NSLayoutConstraint.activate([
//            weightField.topAnchor.constraint(equalTo: datePicker.bottomAnchor, constant: 12),
//            weightField.heightAnchor.constraint(equalToConstant: 60),
//            weightField.widthAnchor.constraint(equalToConstant: 120),
//            weightField.centerXAnchor.constraint(equalTo: elementsBox.centerXAnchor)])
//        
//    }
    
    func setupWeightInputField() {
        elementsBox.addSubview(weightField)
        
        weightField.translatesAutoresizingMaskIntoConstraints = false
        
        //clear defaults
        weightField.borderStyle = .none
        weightField.backgroundColor = .clear

        //setting paddng
        //weightField.leftView = paddingView
        weightField.leftViewMode = .always
        weightField.layer.cornerRadius = 6.0
        weightField.layer.borderWidth = 1.5
        
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.gray
        ]
        weightField.attributedPlaceholder = NSAttributedString(string: "Your Weight", attributes: attributes)
        weightField.textColor = .black
        weightField.textAlignment = .center
        
        NSLayoutConstraint.activate([
            weightField.topAnchor.constraint(equalTo: datePicker.bottomAnchor, constant: 12),
            weightField.heightAnchor.constraint(equalToConstant: 60),
            weightField.widthAnchor.constraint(equalToConstant: 120),
            weightField.centerXAnchor.constraint(equalTo: elementsBox.centerXAnchor)])
    }
    
    
    ///function setupErrorLabel customizes the emptyFieldError
    func setupErrorLabel() {
        elementsBox.addSubview(errorLabel)
        
        errorLabel.translatesAutoresizingMaskIntoConstraints = false
        errorLabel.text = ""
        errorLabel.textAlignment = .center
        errorLabel.numberOfLines = 0
        errorLabel.textColor = .systemRed
        
        NSLayoutConstraint.activate([
            errorLabel.topAnchor.constraint(equalTo: weightField.bottomAnchor, constant: 12),
            errorLabel.heightAnchor.constraint(equalToConstant: 30),
            errorLabel.leadingAnchor.constraint(equalTo: elementsBox.leadingAnchor, constant: 12),
            errorLabel.trailingAnchor.constraint(equalTo: elementsBox.trailingAnchor, constant: -12)])
        
    }
    
    
    
    //function setupNextButton customizes the next Button
    func setupNextButton() {
        elementsBox.addSubview(nextButton)
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.setTitle("Next", for: .normal)
        nextButton.setTitleColor(AppCommons.textColor, for: .normal)
        nextButton.backgroundColor = UIColor(cgColor: AppCommons.themeColor)
        
        nextButton.layer.cornerRadius = 6.0
        nextButton.layer.borderWidth = 1.0
        nextButton.layer.borderColor = UIColor.black.cgColor
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            nextButton.bottomAnchor.constraint(equalTo: elementsBox.bottomAnchor, constant: -12),
            nextButton.heightAnchor.constraint(equalToConstant: 60),
            nextButton.leadingAnchor.constraint(equalTo: elementsBox.leadingAnchor, constant: 12),
            nextButton.trailingAnchor.constraint(equalTo: elementsBox.trailingAnchor, constant: -12)])
    }
    
    
    
    ///Mark: this need implementation to store input data
    @objc func nextButtonTapped() {
        errorLabel.textColor = .systemRed
        
        //get weight from weight field
        let weightString = weightField.text ?? ""
        let weight: Int = Int(weightString) ?? 0
        
        //check validity of weight value
        if weight <= 0 {
            errorLabel.text = "Please give a valid weight value"
        }
        
        else {
            //get data from date picker and convert to seconds
            let dateObject = datePicker.date
            let birthDate = dateObject.timeIntervalSince1970
            
            //store the data in user object
            AppCommons.user.Weight = weight
            AppCommons.user.Birthdate = birthDate
            
            let message = AppCommons.user.storeUser()
            if message == "storing_successful" {
                errorLabel.text = "Successfully added!"
                errorLabel.textColor = UIColor(cgColor: AppCommons.themeColor)
                sleep(1)
                let nextScreen = HomeScreen()
                navigationController?.pushViewController(nextScreen, animated: true)
            }
            else if message == "already_exists" {
                errorLabel.text = "User already exits"
                sleep(2)
                navigationController?.popViewController(animated: true)
            }
            else if message == "storing_error" {
                errorLabel.text = "Error occured while storing user"
            }
            else {
                errorLabel.text = "Unknown eror occured"
            }
            
            
        }
        
        
        
    }
}
