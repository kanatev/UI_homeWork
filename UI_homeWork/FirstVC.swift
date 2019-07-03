//
//  ViewController.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 30/06/2019.
//  Copyright © 2019 Aleksei Kanatev. All rights reserved.
//

// Приступаю к дз #2

import UIKit

class FirstVC: UIViewController {

    // white status bar
    var barStyle = UIStatusBarStyle.lightContent
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return barStyle
    }
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var enterButtonOutlet: UIButton!
    
    func clearTextFields() {
        loginTextField.text = nil
        passwordTextField.text = nil
    }
    
    @IBAction func enterButton(_ sender: Any) {

        if !loginTextField.text!.isEmpty && !passwordTextField.text!.isEmpty {
            let login = loginTextField.text!
            let password = passwordTextField.text!
            print("Entered data: Login: \(login), Password: \(password)")
            
            if login == "admin" && password == "123456" {
                print("access granted\n")
                clearTextFields()
            } else {
                print("access denied\n")
                clearTextFields()
            }
            
        } else {
            print("Операция не может быть выполнена. Заполнены не все поля.\n")
            clearTextFields()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginTextField.placeholder = "Email или телефон"
        passwordTextField.placeholder = "Пароль"
        enterButtonOutlet.layer.cornerRadius = 5
    }


}

// Отправляю на проверку
