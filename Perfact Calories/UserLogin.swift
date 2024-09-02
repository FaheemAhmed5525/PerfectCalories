//
//  UserLogin.swift
//  Perfact Calories
//
//  Created by Faheeam Ahmed on 19/08/2024.
//


import UIKit


class UserLogin: SignInFormat {

    
    //nameField will get input for user name
    let nameField = UITextField()
    
    //emptyFieldError is displayed when user tries to continue with empty field
    let errorLabel = UILabel()
    
    //registerButton adds given as new user
    let registerButton = UIButton()
    
    //nextButton take user to the next Screen
    let nextButton = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(screenLabel)
        
        setupScreenLabel()
        setupElementsBox()
        // Do any additional setup after loading the view.
    }
    
    
    
    ///func setupScreenLabel customizes the screenLabel
    override func setupScreenLabel() {
        super.setupScreenLabel()
        screenLabel.text = "Your Name"
        
    }
    
    
    ///function setupElementsBox customizes the elementsBox
    override func setupElementsBox() {
        super.setupElementsBox()
        
        setupNameField()
        setupErrorLabel()
        setupRegisterButton()
        setupNextButton()
    }

    
    
    ///function setupNameField customizes the nameField
    func setupNameField() {
        elementsBox.addSubview(nameField)
        
        nameField.translatesAutoresizingMaskIntoConstraints = false
        
        //clear defaults
        nameField.borderStyle = .none
        nameField.backgroundColor = .clear
        
        //setting paddng
        nameField.leftView = paddingView
        nameField.leftViewMode = .always
        nameField.textColor = .black
        
        nameField.layer.borderColor = AppCommons.themeColor
        nameField.layer.cornerRadius = 6.0
        nameField.layer.borderWidth = 1.5
        nameField.placeholder = "Your Name"
        NSLayoutConstraint.activate([
            nameField.topAnchor.constraint(equalTo: elementsBox.topAnchor, constant: 12),
            nameField.heightAnchor.constraint(equalToConstant: 60),
            nameField.leadingAnchor.constraint(equalTo: elementsBox.leadingAnchor, constant: 12),
            nameField.trailingAnchor.constraint(equalTo: elementsBox.trailingAnchor, constant: -12)])
        
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
            errorLabel.topAnchor.constraint(equalTo: nameField.bottomAnchor, constant: 12),
            errorLabel.heightAnchor.constraint(equalToConstant: 60),
            errorLabel.leadingAnchor.constraint(equalTo: elementsBox.leadingAnchor, constant: 12),
            errorLabel.trailingAnchor.constraint(equalTo: elementsBox.trailingAnchor, constant: -12)])
        
    }
    
    
    
    ///fucntion setupRegisterButton customizes registerButton
    func setupRegisterButton() {
        elementsBox.addSubview(registerButton)
        
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.setTitle("Add as new", for: .normal)
        registerButton.setTitleColor(AppCommons.textColor, for: .normal)
        registerButton.backgroundColor = .clear
        registerButton.layer.cornerRadius = 6.0
        registerButton.layer.borderWidth = 2.0
        registerButton.layer.borderColor = AppCommons.themeColor
        registerButton.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            registerButton.bottomAnchor.constraint(equalTo: elementsBox.bottomAnchor, constant: -12),
            registerButton.heightAnchor.constraint(equalToConstant: 60),
            registerButton.leadingAnchor.constraint(equalTo: elementsBox.leadingAnchor, constant: 12),
            registerButton.trailingAnchor.constraint(equalTo: elementsBox.trailingAnchor, constant: -12)
        ])
        
    }
    
    
    
    ///function setupNextButton customizes the next Button
    func setupNextButton() {
        elementsBox.addSubview(nextButton)
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.setTitle("Next", for: .normal)
        nextButton.setTitleColor(AppCommons.textColor, for: .normal)
        nextButton.backgroundColor = UIColor(cgColor: AppCommons.themeColor)
        nextButton.layer.cornerRadius = 6.0
        nextButton.layer.borderWidth = 1.0
        nextButton.layer.borderColor = AppCommons.borderColor
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            nextButton.bottomAnchor.constraint(equalTo: registerButton.topAnchor, constant: -12),
            nextButton.heightAnchor.constraint(equalToConstant: 60),
            nextButton.leadingAnchor.constraint(equalTo: elementsBox.leadingAnchor, constant: 12),
            nextButton.trailingAnchor.constraint(equalTo: elementsBox.trailingAnchor, constant: -12)])
    }
    
    
    
    ///Mark: this need implementation to check input data correctness
    @objc func nextButtonTapped() {
        let name = nameField.text ?? ""
        if name.count == 0 {
            errorLabel.text = "Name can't be empty"
        }
        else {
            let message = AppCommons.user.loadUser(name: name)
            if message == "loading_successful" {
                ///code here to validate stored data
                let nextScreen = HomeScreen()
                navigationController?.setViewControllers([nextScreen], animated: true)
            }
            else if message == "no_such_user" {
                errorLabel.text = "User: `\(name)' deos't exit, \n Click Add as new"
            }
            else if message == "loading_error"{
                errorLabel.text = "Error while loading user"
            }
            else {
                errorLabel.text = "Unknown error! Please try again"
            }
            
        }
        
    }
    
    
    ///Mark: this need implementation to store input data
    @objc func registerButtonTapped() {
        let name = nameField.text ?? ""
        if name.count == 0 {
            errorLabel.text = "Name can't be empty"
        }
        else{
            AppCommons.user.Name = name
            ///Code here to store input date
            let nextScreen = GetInfo()
            navigationController?.pushViewController(nextScreen, animated: true)
        }
        
    }

}

